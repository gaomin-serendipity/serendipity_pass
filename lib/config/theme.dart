/**
 * @author: gaomin <imgaomin@gmail.com>
 * @description: 主题管理
 * @time: 2024-07-06 14:57
 */
import 'package:flutter/material.dart';


class AppTheme {
  // 1.抽取相同的样式
  static const double _titleFontSize = 20;
  // 2.亮色主题
  static final ThemeData LIGHT_THEME = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade400),
    useMaterial3: true,
  );

  // 3.暗黑主题
  static final ThemeData DARK_THEME = ThemeData(
    colorScheme: const ColorScheme.dark(),
  );


  static final ThemeData PUPLE_THEME = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
  );
}
//
//
// class ThemeController extends GetxController {
//   final theme = AppTheme.LIGHT_THEME.obs;
//
//   void changeTheme() {
//     theme.value = theme.value == AppTheme.LIGHT_THEME
//     update();
//   }
// }