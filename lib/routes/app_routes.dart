import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_page_container_screen/home_page_container_screen.dart';

class AppRoutes {
  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String homePage = '/home_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homePageContainerScreen: HomePageContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomePageContainerScreen.builder
      };
}
