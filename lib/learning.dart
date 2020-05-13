//main 函数是 dart 入口
//dart 用 print 打印日志
main() {
  print("Hello world");
  //声明变量
  //1明确声明

  String agrs = "abc";
  //2类型推导
  //2.1 var 声明变量
  var count = 20;
  //2.2final 声明常量
  final address = 2.02;
  //2.3const 声明常量
  const home = 14654;
  //2.4 final 和 const 的区别
  //const 必须赋值常量值（编译期间需要有一个确定的值）
  //final 可以计算/函数获取一个值（运行期间来获取一个值）

  final p2 = new Person("C"); //new 可以省略；
  final p1 = Person("S");

  print(identical(p1, p2)); //判断两个对象是否相同

//  const p3 = Person("why");

  const p4 = Person2("why");
  const p5 = Person2("why");
  const p6 = Person2("cause");

  print(identical(p4, p5));//true
  print(identical(p4, p6));//false


  //定义字符串
  var  str1 = 'abc';
  var str2 = "abc";
  var str3 = """
  abc
  abc
  abc
  """;

  //2字符串和表达式拼接
  var name = "why";
  var age = 19;
  var height = 1.88;


  //强调 ${}  大括号可以省略
  var message1 = "my name is${name}, age is ${age}";
  var message2 = "name is ${name} , type is ${name.runtimeType}";


  //集合
  //1.列表List
  var names = ["","",""];
  names.remove("");
  //2.集合Set
  var movices = {"","",""};
  movices.add("");
  //3.映射
  var info = {
    "":"",
    "":19,
  };

  //dart 没有关键字来定义接口，默认是所有类都是隐式接口
  

}

class Person {
  String name;

  Person(String name) {
    this.name = name;
  }
}

class Person2 {
  final String name;

  const Person2(this.name);
//下面这种方式不可取
//  const Person2(String name) {
//    this.name = name;
//  }
}