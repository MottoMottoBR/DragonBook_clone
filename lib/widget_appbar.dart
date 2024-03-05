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
    bottom: const TabBar(tabs: [
      Tab(
        icon: FaIcon(FontAwesomeIcons.home),
      ),
      Tab(
        icon: FaIcon(FontAwesomeIcons.fontAwesome),
      ),
      Tab(
        icon: FaIcon(FontAwesomeIcons.fontAwesome),
      ),
      Tab(
        icon: FaIcon(FontAwesomeIcons.fontAwesome),
      ),
      Tab(
        icon: FaIcon(FontAwesomeIcons.fontAwesome),
      ),
      Tab(
        icon: FaIcon(FontAwesomeIcons.fontAwesome),
      ),
    ]),
  );
}
