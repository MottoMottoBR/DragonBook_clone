import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://coisasdojapao.com/wp-content/uploads/2023/05/goku-dragon-ball-curiosidades-0.webp',
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      hintText: 'No que você esta pensando?',
                    ),
                  ),
                ),
                const FaIcon(
                  FontAwesomeIcons.fileImage,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
