import 'package:flutter/material.dart';
import 'package:flutter_components_app/screen/screen.dart';
import 'package:flutter_components_app/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview',
        name: 'List View 1',
        screen: const ListView1(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.notifications),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.face),
    MenuOption(
        route: 'animation',
        name: 'Animation Screen',
        screen: const AnimatedScreen(),
        icon: Icons.animation),
    MenuOption(
        route: 'inputs',
        name: 'Inputs Screen',
        screen: const InputsScreen(),
        icon: Icons.input),
    MenuOption(
        route: 'slider',
        name: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.slideshow),
    MenuOption(
        route: 'listviewbuilder',
        name: 'InfiniteScroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.slow_motion_video),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
    'avatar': (BuildContext context) => const AvatarScreen(),
    'animation': (BuildContext context) => const AnimatedScreen(),
    'inputs': (BuildContext context) => const InputsScreen(),
    'slider': (BuildContext context) => const SliderScreen(),
    'listviewbuilder' : (BuildContext context) => const ListViewBuilderScreen(),
  };

  static Route onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
