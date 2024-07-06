/**
 * @author gaomin <imgaomin@gmail.com>
 * @description 启动页
 * @time 2024-07-06 13:54
 */
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../config/route.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _currentTime = 3;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    // 退出全屏模式
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  }

  @override
  Widget build(BuildContext context) {
    // 进入全屏模式: 不显示状态栏和底部导航栏
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    // 适配屏幕尺寸
    // ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("resources/images/splash.jpg", fit: BoxFit.fill),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black.withOpacity(0.4),),
              width: 50,
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => _jumpHomePage(),
                    child: const Text("跳过", style: TextStyle(fontSize: 12, color: Colors.white, decoration: TextDecoration.none),)
                  ),
                  Text("$_currentTime", style: const TextStyle(fontSize: 12, color: Colors.white, decoration: TextDecoration.none),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// 启动倒计时的计时器
  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime--;
      });
      if (_currentTime <= 0) {
        _jumpHomePage();
      }
    });
  }

  void _jumpHomePage() {
    // 取消倒计时的计时器
    _timer.cancel();
    Get.offNamed(Routes.home.path);
  }
}
