import 'package:flutter/material.dart';
import 'package:news_app/config/constants/pages_route_name.dart';
import 'package:news_app/screens/home/pages/home_view.dart';
import 'package:news_app/screens/settings/pages/setting_view.dart';
import 'package:news_app/screens/splash/pages/siplash_view.dart';

//Routes navigation pages
class Routes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteNames.inital:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case PageRouteNames.homeview:
        return MaterialPageRoute(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case PageRouteNames.settingView:
        return MaterialPageRoute(
          builder: (context) => const SettingView(),
          settings: settings,
        );
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const SplashView(),
            settings: settings,
          );
        }
    }
  }
}
