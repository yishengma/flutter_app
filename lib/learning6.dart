

//dart 默认所有的类都是隐式接口
//dart 是单继承

//当一个类当作接口使用时，需要实现接口内所有方法
class SuperMan implements Flyer {

}
//混入的语法
//定义可混入的类时用 mixin
//用 with 混入
mixin Flyer {

}

mixin Runner {

}

class SuperMan2 with Flyer,Runner {

}