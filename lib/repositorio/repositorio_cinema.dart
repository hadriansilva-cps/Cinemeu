import 'package:cinemeu/entidade/cinema.dart';

class RepositorioCinema {
  List<Cinema> select() {
    return <Cinema>[
      Cinema(
        id: "1",
        nome: "Cine Teatro Matão",
        latitude: -21.6015644,
        longitude: -48.3688865, 
        endereco: "Rua João Pessoa, 842 - Centro",
        telefone: "1633847777", 
        salas: 2,
      ),
      Cinema(
        id: "2",
        nome: "Cinemec Taaquaritinga",
        latitude: -21.4057353,
        longitude: -48.5079264, 
        endereco: "Rua de República, 929",
        telefone: "1633847778", 
        salas: 1,
      ), 
    ];
  }
}

