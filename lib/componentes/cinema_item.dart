import 'package:cinemeu/entidade/cinema.dart';
import 'package:flutter/material.dart';

class CinemaItem extends StatelessWidget {
  final Cinema cinema;

  const CinemaItem({super.key, required this.cinema});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Material(
        elevation: 5,
        child: Row(children: [
         const Icon(
            Icons.theaters,
            size: 48,
            color: Color.fromARGB(255, 1, 11, 100),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cinema.nome),

              Text(cinema.endereco),

              Text("Salas: ${cinema.salas.toString()}")
            ],
          )
        ]),
      ),
    );
  }
}
