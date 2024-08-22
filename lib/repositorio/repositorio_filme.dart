import 'package:cinemeu/entidade/filme.dart';

class RepositorioFilme {
  List<Filme> select(String id) {
    if (id == "1") {
      return <Filme>[
        Filme(
          titulo: "Demon Slayer Mugen Train",
          poster: "https://www.adorocinema.com/filmes/filme-272355/",
          sinopse:
              "Em Demon Slayer - Mugen Train, durante o período Taisho no Japão, o jovem Tanjiro volta para casa depois de um dia de trabalho e encontra sua família brutalmente assassinada por um demônio. Para pior a situação, sua irmã mais jovem, Nezuko, foi transformada em uma criatura demoníaca. Agora ele precisará lutar para vingar sua família e recuperar a irmã.",
          duracao: 117,
          classificacao: "+14",
        ),
        Filme(
          titulo: "Deu a Louca na Chapeuzinho",
          poster: "https://www.adorocinema.com/filmes/filme-58225/",
          sinopse:
              "A tranquilidade da vida na floresta é alterada quando um livro de receitas é roubado. Os suspeitos do crime são Chapeuzinho Vermelho, o Lobo Mau, o Lenhador e a Vovó, mas cada um deles conta uma história diferente sobre o ocorrido. Cabe então ao inspetor Nick Pirueta investigar o caso e descobrir a verdade.",
          duracao: 80,
          classificacao: "Livre",
        ),
      ];
    }

    return <Filme>[
      Filme(
        titulo: "Demon Slayer Mugen Train",
        poster: "https://www.adorocinema.com/filmes/filme-272355/",
        sinopse:
            "Em Demon Slayer - Mugen Train, durante o período Taisho no Japão, o jovem Tanjiro volta para casa depois de um dia de trabalho e encontra sua família brutalmente assassinada por um demônio. Para pior a situação, sua irmã mais jovem, Nezuko, foi transformada em uma criatura demoníaca. Agora ele precisará lutar para vingar sua família e recuperar a irmã.",
        duracao: 117,
        classificacao: "+14",
      ),
    ];
  }
}
