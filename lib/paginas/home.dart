import 'package:facebook_clone/botoes/pensando_hoje.dart';
import 'package:facebook_clone/styles/app_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../postagens_feed/feed_postagem.dart';
import '../postagens_feed/istory_postagens.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.pretoEscuro,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Pensando Hoje é primeira barra apos o cabeçalho onde pode  realizar uma nova postagem
            pensandoHoje(),
            const SizedBox(
              height: 10,
            ),
            //Controla a barra de Historias
            const IstoryPostagens(),
            const SizedBox(
              height: 10,
            ),

            //Postagem
            const SizedBox(
              height: 10,
            ),
            const ListaDePostagem(),
          ],
        ),
      ),
    );
  }
}
