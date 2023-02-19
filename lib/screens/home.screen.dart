import 'package:flutter/material.dart';
import 'package:udemy_app/routers/app.routes.dart';
import 'package:udemy_app/themes/app.theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Components Flutter"),
          elevation: 1,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(menuOptions[index].name),
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primaryColor,
            ),
            onTap: () =>
                {Navigator.pushNamed(context, menuOptions[index].route)},
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
