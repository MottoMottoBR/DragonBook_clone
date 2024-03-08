import 'package:facebook_clone/appp_cores.dart';
import 'package:facebook_clone/user_db_local.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Container pensandoHoje() {
  return Container(
    height: 60,
    decoration: const BoxDecoration(color: AppCores.cinzaEscuro),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(backgroundImage: UserDbLocal.userIMG),
        SizedBox(
          width: 250,
          height: 50,
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                hintText: "No que você está  pensando?",
                hintStyle: TextStyle(color: AppCores.brancoClaro)),
          ),
        ),
        const FaIcon(
          FontAwesomeIcons.fileImage,
          color: Colors.green,
        )
      ],
    ),
  );
}
