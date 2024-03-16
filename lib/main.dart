import 'package:flutter/material.dart';
import './constants/route_path.dart';
import './config/routes/route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        iconTheme: IconThemeData(color: Colors.grey[800]),
        useMaterial3: true,
      ),
      initialRoute: RoutePath.dashboard,
      routes: routeConfig,
    );
  }
}
