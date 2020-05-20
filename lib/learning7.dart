////默认情况下，一个 dart 文件就是一个模块（库文件）
//import 'dart:math';
////当库内方法和本库方法有重复的时候可以使用 as 起别名
//
//import 'dart:async' as Aysnc;
//
////默认情况下导入一个库时，导入这个库所有的内容
////show
////hide
//import 'dart:_internal' hide Symbol;
//import 'dart:math' show Random;
//
////公共的dart 文件抽取
//export '';
//
//
//
//// _ 是 dart 区分私有和公共的方式

class Person {

}

//扩展这个类
extension Person1 on Person {

}


//扩展某个类
extension String1 on String {
  List<String> split(String split) {

  }
}