import 'package:flutter/material.dart';
import 'package:life_cycle/app/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.route});
  final bool route;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => MyRoutes.onGenerateRoute(
        settings,
        true,
      ),
    );
  }
}
