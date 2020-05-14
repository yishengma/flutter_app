////main 函数是 dart 入口
////dart 用 print 打印日志
//main() {
//  print("Hello world");
//  //声明变量
//  //1明确声明
//
//  String agrs = "abc";
//  //2类型推导
//  //2.1 var 声明变量
//  var count = 20;
//  //2.2final 声明常量
//  final address = 2.02;
//  //2.3const 声明常量
//  const home = 14654;
//  //2.4 final 和 const 的区别
//  //const 必须赋值常量值（编译期间需要有一个确定的值）
//  //final 可以计算/函数获取一个值（运行期间来获取一个值）
//
//  final p2 = new Person("C"); //new 可以省略；
//  final p1 = Person("S");
//
//  print(identical(p1, p2)); //判断两个对象是否相同
//
////  const p3 = Person("why");
//
//  const p4 = Person2("why");
//  const p5 = Person2("why");
//  const p6 = Person2("cause");
//
//  print(identical(p4, p5));//true
//  print(identical(p4, p6));//false
//
//
//  //定义字符串
//  var  str1 = 'abc';
//  var str2 = "abc";
//  var str3 = """
//  abc
//  abc
//  abc
//  """;
//
//  //2字符串和表达式拼接
//  var name = "why";
//  var age = 19;
//  var height = 1.88;
//
//
//  //强调 ${}  大括号可以省略
//  var message1 = "my name is${name}, age is ${age}";
//  var message2 = "name is ${name} , type is ${name.runtimeType}";
//
//
//  //集合
//  //1.列表List
//  var names = ["","",""];
//  names.remove("");
//  //2.集合Set
//  var movices = {"","",""};
//  movices.add("");
//  //3.映射
//  var info = {
//    "":"",
//    "":19,
//  };
//
//  //dart 没有关键字来定义接口，默认是所有类都是隐式接口
//
//
//  //位置参数，按顺序
//  sayHello2("");
//  sayHello2("", 0, 2.0);
//
//  //命名可选参数，可不按顺序
//  sayHelllo3("", age: 0, heght: 2);
//}
//
////返回的类型是可以省略（不推荐）
//sum1(int num1, int num2) {
//  return num1 + num2;
//}
//
//int sum(int num1, int num2) {
//  return num1 + num2;
//}
//
////dart 没有函数重载
////必选参数，必须传
//void sayHello(String name) {
//  print(name);
//}
////可选参数
////只有可选参数可以有默认值
////1.位置可选参数
//
//void sayHello2(String name, [int age, double height]) {
//
//}
//
//void sayHello21(String name, [int age = 10, double height = 3.14]) {
//
//}
//
////2.命名可选参数
//void sayHelllo3(String name, {int age, int heght}) {
//
//}
//
////函数可以作为另一个名字的参数
//
//void main2() {
//  //匿名函数
//  test((){
//    //
//    print("");
//    return 10;
//  });
//
//  //箭头函数,函数体只有一行代码
//  test(()=>print(""));
//
//  //指定参数
//  test2((num1, num2) {
//    return num2+num1;
//  });
//}
////不好阅读,对函数没有任何限制
//void test(Function  foo) {
//  void result = foo();
//}
////不好阅读
//void test2(int foo(int num1,int num2)) {
//
//}
//
//void bar() {
//  print("bar 函数被调用");
//}
//
////采用这种方式
//typedef Calculate  = int Function(int num1,int num2);
//
//void test3(Calculate calculate) {
//  calculate(1,2);
//}
//
//
////函数可以作为返回值
//Calculate demo() {
//  return (num1,num2){
//    return num1 + num2;
//  };
//}
//class Person {
//  String name;
//
//  Person(String name) {
//    this.name = name;
//  }
//}
//
//class Person2 {
//  final String name;
//
//  const Person2(this.name);
////下面这种方式不可取
////  const Person2(String name) {
////    this.name = name;
////  }
//}