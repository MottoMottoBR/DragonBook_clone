import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.black87,
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
    bottom: TabBar(tabs: [
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
            backgroundImage: NetworkImage(
                'https://coisasdojapao.com/wp-content/uploads/2023/05/goku-dragon-ball-curiosidades-0.webp'),
          ),
        ),
      ),
    ]),
  );
}
