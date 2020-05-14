main() {
  var p = Person("why");
  print(p.age);//这里是 null


  final p1 = Person3.withName("a");
  var p2 = Person3.withName("b");
}


class Person {
  String name;
  int age;


//  Person(this.name,this.age);

  //构造函数重定向
  Person(String name):this._internal(name,0);

  Person._internal(this.name,this.age);
}

class Person2 {
  final String name;
  //常量构造函数
  const Person2(this.name);
}

//普通的构造函数返回创建出来的对象

//工厂构造函数，可以手动的返回一个对象
//需求，name 相同时返回通过一个对象
//age 相同时返回同一个对象
class Person3 {
   String name;
   String color = "red";

   static final Map<String,Person3> _nameCache = {};
   static final Map<String,Person3> _colorCache = {};
   //如果不加 factory 用普通的构造函数是不能返回 对象
   factory Person3.withName(String name) {
     if(_nameCache.containsKey(name)) {
       return _nameCache[name];
     } else{
       final p = Person3(name,"default");
       _nameCache[name] = p;
     }
   }

   Person3(this.name,this.color);



}
