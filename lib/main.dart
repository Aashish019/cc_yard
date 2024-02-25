import 'package:cc_yard_test/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          colorScheme: const ColorScheme.dark(
            background: Colors.black,
            primary: Color(0xffEA7605),
            secondary: Color(0xff222222),
          )),
      home: HomePage(),
    );
  }
}
