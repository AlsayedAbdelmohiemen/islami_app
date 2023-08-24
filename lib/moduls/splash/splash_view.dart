import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/settings_provider.dart';
import 'package:provider/provider.dart';

class SplashView extends StatelessWidget {
  static String routeName = "splash";

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              !provider.isDark()
                  ? "assest/image/splash_background.png"
                  : "assest/image/splash_dark.png",
            ),
            fit: BoxFit.fill),
      ),
    );
  }
}
