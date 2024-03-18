import 'package:facebook_clone/models/seguidores_istory_model.dart';
import 'package:facebook_clone/styles/app_cores.dart';
import 'package:flutter/material.dart';

import '../botoes/new_istory.dart';

class IstoryPostagens extends StatelessWidget {
  const IstoryPostagens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppCores.brancoClaro),
      width: double.infinity,
      // height: 240,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewIstory(),
              SizedBox(width: 10),
              SeguidorePostagemsIstoryModel(
                //Foto De Perfil
                imgPerfilUrls:
                    'https://i.pinimg.com/originals/24/8e/80/248e80fd3cb4d8a0bb8b0f6dd75b5c76.jpg',
                //Postagem Do usuario
                postIMGurl:
                    'https://pm1.aminoapps.com/6433/a41fbec45fe0b3b104fa9770553595a8d61a78ed_hq.jpg',
                //Nome Do usuario
                userName: 'Principe Vegeta',
              ),
              SeguidorePostagemsIstoryModel(
                  postIMGurl:
                      'https://i.pinimg.com/originals/93/01/51/9301514b13e0d00495666cf3502381a5.jpg',
                  userName: 'Bulma',
                  imgPerfilUrls:
                      'https://i.pinimg.com/originals/73/b9/21/73b9215b1c2c151ededc697917b8899c.jpg'),
              SeguidorePostagemsIstoryModel(
                  postIMGurl:
                      'https://i.ytimg.com/vi/U3IHx9lCLJM/maxresdefault.jpg',
                  userName: 'Mestre Kame',
                  imgPerfilUrls:
                      'https://revolucaonerd.com/wordpress/wp-content/files/revolucaonerd.com/2023/07/mestre-kame.webp'),
              SeguidorePostagemsIstoryModel(
                  imgPerfilUrls:
                      'https://conteudo.imguol.com.br/c/entretenimento/9c/2017/07/14/gohan-1500057808905_v2_1x1.jpg',
                  postIMGurl:
                      'https://pm1.aminoapps.com/6675/4b458fbd6cd9496dcfddabadfea69ea6bfdb4feb_00.jpg',
                  userName: 'Gohan'),
              SeguidorePostagemsIstoryModel(
                  imgPerfilUrls:
                      'https://upload.wikimedia.org/wikipedia/pt/d/d1/Piccolo_Jr.jpg',
                  postIMGurl:
                      'https://s.aficionados.com.br/imagens/154-1546127-dragon-ball-z-piccolo-vs-goku_cke.jpg',
                  userName: 'Piccolo'),
              SeguidorePostagemsIstoryModel(
                  imgPerfilUrls:
                      'https://i.pinimg.com/originals/c7/cc/64/c7cc648b069a5b554f388cfb69f936f8.jpg',
                  postIMGurl:
                      'https://i.pinimg.com/originals/97/2a/c9/972ac9f1227abcdc705112d14a423c07.jpg',
                  userName: 'Madimbu '),
              SeguidorePostagemsIstoryModel(
                  imgPerfilUrls:
                      'https://i.pinimg.com/originals/46/3d/02/463d022b9a9ab7280ad947fc2312fd3d.jpg',
                  postIMGurl:
                      'https://revolucaonerd.com/wordpress/wp-content/files/revolucaonerd.com/2022/08/dabura-1280x720.webp',
                  userName: 'Dabura')
            ],
          ),
        ),
      ),
    );
  }
}
