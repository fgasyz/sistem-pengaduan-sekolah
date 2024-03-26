import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './constants/route_path.dart';
import './config/routes/route_config.dart';
import 'package:get/get.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Ubuntu',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          iconTheme: IconThemeData(color: Colors.grey[800]),
          useMaterial3: true,
          dataTableTheme: DataTableThemeData(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            dataRowColor: const MaterialStatePropertyAll(Colors.white),
          ),
          scrollbarTheme: ScrollbarThemeData(
              thumbColor: MaterialStatePropertyAll(Colors.lightBlue.shade900),
              trackBorderColor:
                  MaterialStatePropertyAll(Colors.lightBlue.shade900),
              trackColor: MaterialStatePropertyAll(Colors.lightBlue.shade900))),
      initialRoute: RoutePath.home,
      routes: routeConfig,
    );
  }
}
