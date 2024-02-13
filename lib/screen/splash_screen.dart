import 'dart:async';

import 'package:flowers/app/settings.dart';
import 'package:flowers/constants/resources/asset_manegar.dart';
import 'package:flowers/constants/resources/timer.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  startDelay() {
    timer = Timer(const Duration(seconds: AppTimer.splashDelay), goNext);
  }

  goNext() async {
    Navigator.pushReplacementNamed(context, flowersScreen);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
            ImageAssets.zero,
            // ImageAssets.splash0Image,
          ),
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ),
    );
  }
}
