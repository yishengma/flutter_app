//main() {
//
//
//  var p = new Person2("","");
//  var p1 = new Person2.withNameAgeHeiht("", "", 2.0);
//
//
//  //Object 和 dynamic 的区别
//  //编译不过
////  Object obj1 = "";
////  print(obj1.substring());
//
//  dynamic obj2 = "";//是一种类型但是 var 是类型推导
//  print(obj2.substring());
//}
//
//
//
////默认继承 Object
//
//class Person {
//  String name;
//  String age;
//
//  Person(String name,String age){
//    this.name = name;
//    this.age = age;
//  }
//}
//
//
//
//class Person2 {
//  String name;
//  String age;
//  double height;
//
//  Person2(this.name,this.age);//语法糖
//
////命名构造函数
//
//  Person2.withNameAgeHeiht(this.name,this.age,this.height);
//
//  @override
//  String toString() {
//    return name;
//  }
////  Person2.fromMap(Map<String,dynamic>);//dynamic 是任意类型
//}
//
//
////类的初始化列表
//class Person3 {
//  final String name;
//  final int age;
//
////  Person3(this.name,{int age}): age = 10{
////
////  }
//// 初始化列表
////初始化列表可以是初始化语句比如三元运算符
////  Person3(this.name,{int age}) : this.age = age ?? 10 {
////
////  }
////
//// 初始化 age = 10,命名可选参数，
////这里的初始化只能做赋值操作
//  Person3(this.name,{this.age = 10}) {}
//
//}