import 'package:facebook_clone/user_db_local.dart';
import 'package:flutter/material.dart';

import 'appp_cores.dart';
import 'new_istory.dart';

class IstoryController extends StatelessWidget {
  const IstoryController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppCores.cinzaEscuro),
      // width: double.infinity,
      // height: 240,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Row(
            children: [
              NewIstory(),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
