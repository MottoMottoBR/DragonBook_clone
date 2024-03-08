import 'package:facebook_clone/pensando_hoje.dart';
import 'package:facebook_clone/user_db_local.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'appp_cores.dart';
import 'istory_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.pretoEscuro,
      body: Column(
        children: [
          //Pensando Hoje é primeira barra apos o cabeçalho onde pode  realizar uma nova postagem
          pensandoHoje(),
          const SizedBox(
            height: 10,
          ),
          //Controla a barra de Historias
          const IstoryController()
        ],
      ),
    );
  }
}
