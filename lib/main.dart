import 'package:facebook_clone/appp_cores.dart';
import 'package:flutter/material.dart';

import 'tab_controller.dart';

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
      title: 'Facebook Clone',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white10,
          brightness: Brightness.dark,
        ),
      ),
      home: const TabPageController(),
    );
  }
}
