/**
 * @author gaomin <imgaomin@gmail.com>
 * @description 404页面
 * @time 2024-07-06 13:52
 */
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text("404"),),
        body: const Center(child: Text("您访问的页面不存在！！！")),
      );
  }
}
