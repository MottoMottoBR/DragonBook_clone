import 'package:facebook_clone/controllers/postagem_controller.dart';
import 'package:flutter/material.dart';

class ListaDePostagem extends StatelessWidget {
  const ListaDePostagem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FeedPostagensModel(
          userFoto:
              'https://i.pinimg.com/originals/73/b9/21/73b9215b1c2c151ededc697917b8899c.jpg',
          userName: 'Bulma Brifs',
          urlImgPostagem:
              'https://www.comboinfinito.com.br/principal/wp-content/uploads/2024/03/Akira-Toriyama-Dragon-Ball.jpg ',
          postagetext:
              ' Queridos amigos,  \n Hoje, nossos corações estão pesados enquanto nos despedimos de um gênio, um visionário que deu vida a mundos de magia e aventura. Queridos amigos,   \n Akira Toriyama, o brilhante criador por trás de "Dragon Ball", partiu deste mundo, deixando um legado que ecoará através das eras. Lembro-me como se fosse ontem quando nossas jornadas começaram, quando Goku cruzou meu caminho e nossas vidas se entrelaçaram em uma saga que cativou o mundo inteiro. \n Obrigada, Toriyama-sensei, por dar vida a cada personagem, cada luta, cada momento de riso e lágrima. Você nos mostrou que a verdadeira força reside na amizade, na coragem e na superação.',
        ),
        FeedPostagensModel(
            userFoto:
                'https://static.wikia.nocookie.net/dragonball/images/4/4f/MasterRoshiFutureTrunks.png/revision/latest?cb=20170614012115&path-prefix=pt-br',
            userName: 'Mestre Kame',
            urlImgPostagem:
                'https://img.quizur.com/f/img60ea1c43160ad4.76583378.jpg?lastEdited=1625955399 ',
            postagetext: ''),
        FeedPostagensModel(
            userFoto:
                'https://versus.com.br/wp-content/uploads/2023/06/as-fugitivas-25.jpg',
            userName: 'Kuririn',
            urlImgPostagem:
                'https://ovicio.com.br/wp-content/uploads/2022/07/20220719-ovicio-dragon-ball-kuririn-androide-18.jpg',
            postagetext: ''),
      ],
    );
  }
}
