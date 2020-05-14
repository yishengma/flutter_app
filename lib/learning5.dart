main() {


}

//抽象类不能通过默认构造函数实例化，可以通过工厂构造函数进行实例化
//继承抽象类继承必须实现
abstract class Shape {
  void getArea();
  String getInfo() {
    return "";
  }

  factory Shape() {
    return null;
  }
}
// external 关键字的作用：将方法的实现和方法的声明分离
//通过 @patch 注解补丁
//例如 Map 的实例化

//class Rect extends Shape {
//
//  @override
//  void getArea() {
//
//  }
//}