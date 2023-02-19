import 'package:flutter/material.dart';
import 'package:udemy_app/routers/app.routes.dart';
import 'package:udemy_app/themes/app.theme.dart';
import 'package:wakelock/wakelock.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp(
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
