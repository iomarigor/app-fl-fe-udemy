import 'package:flutter/material.dart';
import 'package:udemy_app/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "/";
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/', name: 'home', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(
        route: '/listview1',
        name: 'listview1',
        screen: const Listview1Screen(),
        icon: Icons.accessibility_new_rounded),
    MenuOption(
        route: '/listview2',
        name: 'listview2',
        screen: const Listview2Screen(),
        icon: Icons.account_box_sharp),
    MenuOption(
        route: '/alert',
        name: 'alert',
        screen: const AlertScreen(),
        icon: Icons.taxi_alert),
    MenuOption(
        route: '/card',
        name: 'card',
        screen: const CardScreen(),
        icon: Icons.credit_card),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    '/listview1': (context) => const Listview1Screen(),
    '/listview2': (context) => const Listview2Screen(),
    '/alert': (context) => const AlertScreen(),
    '/card': (context) => const CardScreen(),
    '/': (context) => const HomeScreen(),
  }; */
  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(builder: (context) => const AlertScreen());
}
