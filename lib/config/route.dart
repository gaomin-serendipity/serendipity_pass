/**
 * @author: gaomin <imgaomin@gmail.com>
 * @description: 路由管理
 * @time: 2024-07-06 13:57
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../page/common/404.dart';
import '../page/splash.dart';


class AppRoute {
  /// 路由表
  static final routes = [
    GetPage(name: Routes.home.path, page: () => Routes.home.widget),
    GetPage(name: Routes.launch.path, page: () => Routes.launch.widget),
  ];

  static final unknownRoute = GetPage(name: Routes.notFound.path, page: () => Routes.notFound.widget);

// static final RouteFactory generateRoute = (settings) {};
}


enum Routes {
  home("/home", SplashPage()),
  launch("/splash", SplashPage()),
  notFound("/notFound", NotFoundPage()),
  ;

  final String path;
  final Widget widget;


  const Routes(this.path, this.widget);
}