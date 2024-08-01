import 'package:cinemeu/entidade/filme.dart';

class RepositorioFilme {
  List<Filme> select() {
    return <Filme>[
      Filme(
        titulo: "DeadPool e Wolverine 2",
        poster:
            "https://cinepop.com.br/wp-content/uploads/2024/05/deadpool-e-wolverine-poster.jpg",
        sinopse:
            "Wolverine está se recuperando quando cruza seu caminho com Deadpool. Juntos, eles formam uma equipe e enfrentam um inimigo em comum.",
        duracao: 127,
        classificacao: "18",
      ),
      Filme(
        titulo: "Divertidamente 2",
        poster:
            "https://br.web.img3.acsta.net/c_310_420/pictures/15/05/14/14/20/365361.jpg",
        sinopse:
            "Com um salto temporal, Riley se encontra mais velha, passando pela tão temida adolescência. Junto com o amadurecimento, a sala de controle também está passando por uma adaptação para dar lugar a algo totalmente inesperado: novas emoções.",
        duracao: 95,
        classificacao: "L",
      ),
      Filme(
        titulo: "Twisters",
        poster:
            "https://dx35vtwkllhj9.cloudfront.net/universalstudios/twisters/images/regions/us/updates/onesheet.jpg",
        sinopse:
            "Dois caçadores de tempestades arriscam suas vidas na tentativa de testar um sistema experimental de alerta meteorológico.",
        duracao: 122,
        classificacao: "12",
      )
    ];
  }
}
