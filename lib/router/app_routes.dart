import 'package:flutter/material.dart';
import 'package:flutter_components_app/screen/screen.dart';
import 'package:flutter_components_app/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'HomeScreen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview',
        name: 'ListView',
        screen: ListView(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'ListView2',
        screen: const ListView2(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'AlertScreen',
        screen: const AlertScreen(),
        icon: Icons.notifications),
    MenuOption(
        route: 'card',
        name: 'CardScreen',
        screen: const CardScreen(),
        icon: Icons.credit_card),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview': (BuildContext context) => ListView(),
    'listview2': (BuildContext context) => const ListView2(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
