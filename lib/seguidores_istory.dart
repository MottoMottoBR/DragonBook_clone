import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SeguidoresIstory extends StatefulWidget {
  final Image? useriMG;
  final Image? postIMG;
  const SeguidoresIstory(
      {super.key, required this.useriMG, required this.postIMG});

  @override
  State<SeguidoresIstory> createState() => _SeguidoresIstoryState();
}

class _SeguidoresIstoryState extends State<SeguidoresIstory> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 122,
          height: 220,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            // image: DecorationImage(
            //   image: true ? widget.postIMG,
            //   fit: BoxFit.cover,
            // ),
          ),
          child: widget.useriMG,
        ),
        //Conteudo Da Postagem
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    'https://media.licdn.com/dms/image/D4D12AQF9dsFtBBD7cw/article-cover_image-shrink_600_2000/0/1681358091587?e=2147483647&v=beta&t=60aCJnpJv0Ok1dEY9KLA2CK9368DhPx8QzHiSeoDYaE'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 8,
          bottom: 10,
          child: Text(
            'Principe\n Vegeta ',
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          ),
        )
      ],
    );
  }
}
