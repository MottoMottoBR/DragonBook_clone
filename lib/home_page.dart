import 'package:facebook_clone/widget_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Clone',
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: buildAppBar(),
          body: const TabBarView(children: [
            Icon(Icons.directions_car),
            Icon(Icons.abc_outlined),
            Icon(Icons.directions_car),
            Icon(Icons.directions_car),
            Icon(Icons.directions_car),
            Icon(Icons.directions_car),
          ]),
        ),
      ),
    );
  }
}
