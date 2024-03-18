import 'package:facebook_clone/styles/app_cores.dart';
import 'package:facebook_clone/styles/app_cores.dart';

import 'package:facebook_clone/db/user_db_local.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar() {
  return AppBar(
    //Toolbar
    backgroundColor: AppCores.brancoClaro,
    title: Row(
      children: [
        Text(
          '',
          style: GoogleFonts.roboto(
            fontSize: 34,
            color: AppCores.Azulescuro,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'facebook',
          style: GoogleFonts.roboto(
              fontSize: 30,
              color: AppCores.Azulescuro,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.circlePlus,
          color: Colors.black,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.black,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.facebookMessenger,
          color: Colors.black,
        ),
      ),
    ],
    bottom: TabBar(
      indicatorColor: AppCores.Azulescuro,
      labelColor: AppCores.Azulescuro,
      unselectedLabelColor: AppCores.cinzaParaLetras,
      tabs: [
        const Tab(
          icon: Icon(
            Icons.home_filled,
            size: 30,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.tv,
            size: 18,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.userGroup,
            size: 18,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.shop,
            size: 18,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.bell,
            size: 21,
          ),
        ),
        Tab(
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const CircleAvatar(
              backgroundImage: UserDbLocal.userIMG,
            ),
          ),
        ),
      ],
    ),
  );
}
