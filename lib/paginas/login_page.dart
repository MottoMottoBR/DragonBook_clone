import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/app_cores.dart';
import '../widget/text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppCores.brancoClaro,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Facebook',
                  style: GoogleFonts.jockeyOne(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: AppCores.azulFacebookLogo,
                  ),
                ),
               // const PassWordTextField()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
