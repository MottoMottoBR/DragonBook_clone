import 'package:facebook_clone/models/postagem_model.dart';
import 'package:flutter/material.dart';

import '../db/user_db_local.dart';

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
            postagetext:
                '🌸🔥 Saudações, jovens discípulos! Como o tempo passa rápido, não é mesmo? Hoje gostaria de homenagear algumas das mulheres mais incríveis que já cruzaram nosso caminho na jornada das Esferas do Dragão. Chi-Chi, uma verdadeira guerreira que não tem medo de desafiar qualquer obstáculo para proteger sua família e seus ideais. 💖Bulma, uma mente brilhante e destemida, cuja engenhosidade e determinação sempre nos surpreendem. 🛠️💡 E claro, a adorável Androide 18, uma mistura de força, beleza e coragem que nos ensina a valorizar o verdadeiro significado da liberdade. 💪✨  Mulheres do Dragon Ball, vocês são uma fonte de inspiração para todos nós! Que continuem a brilhar com sua coragem, sabedoria e amor. 🌟 #GirlPower #DragonBallFemino'),
        FeedPostagensModel(
            userFoto:
                'https://versus.com.br/wp-content/uploads/2023/06/as-fugitivas-25.jpg',
            userName: 'Kuririn',
            urlImgPostagem:
                'https://ovicio.com.br/wp-content/uploads/2022/07/20220719-ovicio-dragon-ball-kuririn-androide-18.jpg',
            postagetext:
                '🔥💥 Treino intenso no dojo hoje! Não posso negar, o Mestre Kame está nos fazendo suar a faixa! 💦💪 Mas como diz o Mestre, sem suor não há vitória, certo? 😉    E aí, quem mais está se preparando para os desafios que estão por vir? Vamos treinar juntos e nos tornar mais fortes a cada dia! 💥🥋 #Treino #Força #Determinação'),
        FeedPostagensModel(
          userFoto:
              'https://coisasdojapao.com/wp-content/uploads/2023/05/goku-dragon-ball-curiosidades-0.webp',
          userName: 'Goku',
          urlImgPostagem:
              'https://i.pinimg.com/originals/fa/ae/24/faae248c3cae222ff992e992fa6c5724.gif',
          postagetext:
              'E aí, pessoal! Goku aqui! Hoje foi um dia de treino intenso, buscando sempre ultrapassar meus próprios limites! 💪💥 Não há sensação melhor do que sentir meu corpo se fortalecendo a cada desafio superado. Mas lembrem-se, a jornada rumo à excelência nunca acaba! Vamos continuar treinando juntos e nos tornando cada vez mais fortes, porque o próximo desafio está sempre à nossa espera! 🌟✨ #Treino #Força #SuperSaiyanSpirit',
        ),
        FeedPostagensModel(
            userFoto:
                'https://media.licdn.com/dms/image/D4D12AQF9dsFtBBD7cw/article-cover_image-shrink_600_2000/0/1681358091587?e=2147483647&v=beta&t=60aCJnpJv0Ok1dEY9KLA2CK9368DhPx8QzHiSeoDYaE',
            userName: 'Principe Vegeta',
            urlImgPostagem:
                'https://pa1.aminoapps.com/6689/1ac2f40081c0720f9a1c62705e5ebdd7083d07d1_hq.gif',
            postagetext:
                'Hoje, me dediquei ao treino com uma determinação insuperável. 💥 Nada pode me deter quando estou focado em alcançar meus objetivos! Mas lembrem-se, a verdadeira força não vem apenas da intensidade dos golpes, mas sim da determinação inabalável de nunca desistir. Vamos continuar desafiando nossos limites juntos, sempre em busca da superação! 💪🔥 #TreinoIntenso #PrinceOfSaiyans"'),
        FeedPostagensModel(
            userFoto:
                'https://pm1.aminoapps.com/6293/57dc83394b86c3422b83f7fd76d0b3448768bd2a_00.jpg',
            userName: 'Gohan',
            urlImgPostagem:
                'https://i.pinimg.com/originals/13/bb/cd/13bbcd9f3704ececf998896d8879177f.gif',
            postagetext:
                'E aí, galera! Gohan aqui!    Hoje tive um dia de estudos e treino, buscando sempre o equilíbrio entre a mente e o corpo! 📚💪 É incrível como podemos aprender tanto tanto nos livros quanto no campo de batalha. Cada desafio que enfrento me ensina algo novo sobre mim mesmo e sobre o mundo ao meu redor. Vamos continuar buscando conhecimento e crescendo juntos! 🌟✨ #Estudo #Treino #Equilíbrio')
      ],
    );
  }
}
