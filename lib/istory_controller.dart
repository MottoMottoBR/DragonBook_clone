import 'package:facebook_clone/user_db_local.dart';
import 'package:flutter/material.dart';

import 'appp_cores.dart';




class IstoryController extends StatelessWidget {
  const IstoryController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppCores.cinzaEscuro),
      width: double.infinity,
      height: 240,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Stack(
                children: [
                  //Container Pai - fica atras dos outros.
                  Container(
                    width: 122,
                    height: 220,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  //Container responsavel pela foto de usuario.
                  Container(
                    width: 122,
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: UserDbLocal.userIMG,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //Responsavel pelo fundo Preto
                  Positioned(
                    top: 150,
                    child: Container(
                      height: 70,
                      width: 122,
                      decoration: const BoxDecoration(
                        color: AppCores.cinzaClaro,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  //Responsavel pelo botao de clicar no dentro da Imagem
                  Positioned(
                    bottom: 60,
                    right: 50,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: AppCores.cinzaClaro,
                          shape: BoxShape.circle),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 15,
                    left: 20,
                    child: Text(
                      'Criar story',
                      style: TextStyle(color: AppCores.brancoClaro),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
