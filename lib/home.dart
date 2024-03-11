import 'package:facebook_clone/pensando_hoje.dart';
import 'package:facebook_clone/user_db_local.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appp_cores.dart';
import 'istory_controller.dart';

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
            const IstoryController(),
            const SizedBox(
              height: 10,
            ),
            //Postagem
           const  FeedPostagens(),
          ],
        ),
      ),
    );
  }
}

class FeedPostagens extends StatelessWidget {
  const FeedPostagens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: const BoxDecoration(color: AppCores.cinzaClaro),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/73/b9/21/73b9215b1c2c151ededc697917b8899c.jpg'),
                      minRadius: 30,
                      maxRadius: 30,
                      // child: ,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Bulma Briefs',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppCores.brancoClaro),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    FaIcon(CupertinoIcons.ellipsis),
                    SizedBox(
                      width: 20,
                    ),
                    FaIcon(CupertinoIcons.clear)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
