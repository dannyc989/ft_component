import 'package:flutter/material.dart';
import 'package:ft_component/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'List View 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.notifications),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var opt in menuOptions) {
      appRoutes.addAll({opt.route: (BuildContext context) => opt.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
