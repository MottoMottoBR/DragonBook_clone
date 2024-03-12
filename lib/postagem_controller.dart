import 'package:facebook_clone/text_postagem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appp_cores.dart';

class FeedPostagensModel extends StatefulWidget {
  final String userFoto;
  final String userName;
  final String postagetext;
  final String urlImgPostagem;
  const FeedPostagensModel({
    super.key,
    required this.userFoto,
    required this.userName,
    required this.urlImgPostagem,
    required this.postagetext,
  });

  @override
  State<FeedPostagensModel> createState() => _FeedPostagensState();
}

class _FeedPostagensState extends State<FeedPostagensModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 638,
      decoration: const BoxDecoration(color: AppCores.cinzaClaro),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.userFoto),
                      minRadius: 30,
                      maxRadius: 30,
                      // child: ,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.userName,
                        style: GoogleFonts.roboto(
                            fontSize: 18,
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
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(widget.postagetext),
            const SizedBox(
              height: 10,
            ),
            Image.network(widget.urlImgPostagem),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: const BoxDecoration(color: AppCores.brancoClaro),
                width: double.infinity,
                height: 2.0,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const FaIcon(CupertinoIcons.hand_thumbsup),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Curtir',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const FaIcon(CupertinoIcons.chat_bubble),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Comentar',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const FaIcon(CupertinoIcons.paperplane),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Enviar',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const FaIcon(CupertinoIcons.share),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Compartilhar',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
