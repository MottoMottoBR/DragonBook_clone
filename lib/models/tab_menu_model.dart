import 'package:facebook_clone/widget/widget_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../paginas/home.dart';

class TabPageController extends StatelessWidget {
  const TabPageController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 6,
        child: Scaffold(
          // Configuração do APPBar
          //Tem acesso as cores da pragina inicial do APlicativo
          appBar: buildAppBar(),
          body: const TabBarView(children: [
            Home(),
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
