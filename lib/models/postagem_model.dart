import 'package:facebook_clone/styles/app_cores.dart';
import 'package:facebook_clone/styles/text_postagem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

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
  static double espacamentoFixoBotoesLike = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: AppCores.brancoClaro),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(widget.userFoto),
                          minRadius: 20,
                          maxRadius: 20,
                          // child: ,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            widget.userName,
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: AppCores.pretoEscuro),
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
                        FaIcon(CupertinoIcons.clear),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.postagetext),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.network(widget.urlImgPostagem),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
                child: Container(
                  decoration:
                      const BoxDecoration(color: AppCores.cinzaParaLetras),
                  width: double.infinity,
                  height: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        LikeButton(
                          animationDuration: const Duration(milliseconds: 2000),
                          likeBuilder: (isLiked) {
                            if (!isLiked) {
                              return const FaIcon(
                                CupertinoIcons.hand_thumbsup,
                                color: AppCores.cinzaParaLetras,
                              );
                            }
                            if (isLiked) {
                              return const FaIcon(
                                CupertinoIcons.hand_thumbsup_fill,
                                color: AppCores.Azulescuro,
                              );
                            }
                            return null;
                          },
                        ),
                        Text(
                          'Curtir',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            color: AppCores.cinzaParaLetras,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const FaIcon(
                          CupertinoIcons.chat_bubble,
                          color: AppCores.cinzaParaLetras,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: espacamentoFixoBotoesLike),
                          child: Text(
                            'Comentar',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: AppCores.cinzaParaLetras,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     const FaIcon(
                    //       CupertinoIcons.paperplane,
                    //       color: AppCores.cinzaParaLetras,
                    //     ),
                    //     Padding(
                    //       padding:
                    //           EdgeInsets.only(left: espacamentoFixoBotoesLike),
                    //       child: Text(
                    //         'Enviar',
                    //         style: GoogleFonts.roboto(
                    //           fontSize: 12,
                    //           color: AppCores.cinzaParaLetras,
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    Row(
                      children: [
                        const FaIcon(
                          CupertinoIcons.share,
                          color: AppCores.cinzaParaLetras,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: espacamentoFixoBotoesLike),
                          child: Text(
                            'Compartilhar',
                            style: GoogleFonts.roboto(
                                fontSize: 12, color: AppCores.cinzaParaLetras),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
