import 'package:flutter/material.dart';
import 'package:news_app/config/constants/application_theme_manager.dart';
import 'package:news_app/config/constants/pages_route_name.dart';
import 'package:news_app/config/constants/routes.dart';

//To Access Context and navigator For Everyplace on project
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThemeManager.applicationThemeData,
      themeMode: ThemeMode.light,
      navigatorKey: navigatorKey,
      initialRoute: PageRouteNames.inital, //SplashScreen view
      onGenerateRoute: Routes.onGenerateRoutes, //All Pages view Generate route
      debugShowCheckedModeBanner: false,
    );
  }
}
