import 'package:flutter/material.dart';
import 'package:news_app/config/constants/pages_route_name.dart';
import 'package:news_app/config/widgets/custom_background.dart';
import 'package:news_app/main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => navigatorKey.currentState!
          .pushReplacementNamed(PageRouteNames.homeview),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Image.asset("assets/images/logo.png"),
    );
  }
}
