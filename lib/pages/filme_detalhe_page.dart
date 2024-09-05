import 'package:flutter/material.dart';

class FilmeDetalhePage extends StatelessWidget {
  const FilmeDetalhePage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final filmeId = arguments == null ? "" : arguments as String;

    return Scaffold(
      body:  filmeId.isEmpty ?
             emptyBody() : Body(context, filmeId),
    );
  }

  Widget emptyBody() => const Center(
        child: Text("Nenhum filme selecionado! Volte e selecione"),
      );

  Widget Body(BuildContext context, String filmeId) {
    return Container();
  }
}
