import 'package:facebook_clone/appp_cores.dart';
import 'package:facebook_clone/user_db_local.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar() {
  TabController _tabController;
  const corPadraoIcone = AppCores.brancoClaro;
  return AppBar(
    backgroundColor: AppCores.cinzaEscuro,
    title: Row(
      children: [
        Text(
          'f',
          style: GoogleFonts.roboto(
            fontSize: 34,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'acebook',
          style: GoogleFonts.roboto(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.circlePlus,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.facebookMessenger,
          color: Colors.white,
        ),
      ),
    ],
    bottom: TabBar(
      controller: _tabController,
      indicatorColor: AppCores.Azulescuro,
      labelColor: AppCores.Azulescuro,
      tabs: [
        const Tab(
          icon: Icon(
            Icons.home_filled,
            size: 30,
            color: _tabController,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.tv,
            size: 18,
            color: corPadraoIcone,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.userGroup,
            size: 18,
            color: corPadraoIcone,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.shop,
            size: 18,
            color: corPadraoIcone,
          ),
        ),
        const Tab(
          icon: FaIcon(
            FontAwesomeIcons.bell,
            size: 21,
            color: corPadraoIcone,
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
