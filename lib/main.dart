import 'package:flutter/material.dart';

import 'core/resource/routes_manager.dart';
import 'core/resource/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginRoute,
      theme: getApplicationTheme(),
    );
  }
}
