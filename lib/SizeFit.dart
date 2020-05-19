import 'dart:ui';

import 'package:flutter/material.dart';

//Flutter 使用的单位是 pt 即 pointer
//iphone6 尺寸是 375 ，dpr 是 2 则分辨率是 750
//
class SizeFit {

  static double physicalWidth ;
  static double physicalHeight ;
  static double dpr ; //一个点几个像素
  static double width;

  static double height;

  static double status;


  static double rpx;
  static double px;

  static void initialize({double standard = 750}) {//标准的尺寸
    //物理分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;
    //
    dpr = window.devicePixelRatio;

    //
    width = physicalWidth / dpr;
    height = physicalHeight / dpr;
    status = window.padding.top;
    rpx = width / standard;
    px = width / standard * 2;
  }

  static double setPx(double size) {
    return size * px;
  }

  static double setRpx(double size) {
    return size * rpx;

  }
}

//三方库
//flutter screen_util