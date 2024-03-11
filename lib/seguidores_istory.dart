import 'package:facebook_clone/appp_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SeguidorePostagemsIstoryModel extends StatefulWidget {
  //final Image useriMG;
  final String postIMGurl;
  final String userName;
  final String imgPerfilUrls;
  const SeguidorePostagemsIstoryModel({
    super.key,
    required this.imgPerfilUrls,
    required this.postIMGurl,
    required this.userName,
  });

  @override
  State<SeguidorePostagemsIstoryModel> createState() =>
      _SeguidoresIstoryState();
}

class _SeguidoresIstoryState extends State<SeguidorePostagemsIstoryModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Container(
            width: 122,
            height: 220,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.postIMGurl,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          //Conteudo Da Postagem
          Positioned(
            top: 10,
            left: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.network(
                  widget.imgPerfilUrls,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            left: 8,
            bottom: 10,
            child: Text(
              widget.userName,
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
