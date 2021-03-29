import 'package:flutter/material.dart';
import 'package:bpf/views_models/controle_secundario.dart';
import 'package:bpf/widgets/controle_tile.dart';

class ControlLimpezaCaixaAgua extends StatelessWidget {
  final dummyList = [
    ControlTile(
      date: DateTime.now(),
      imageUrl:
          'https://www.thenibble.com/reviews/main/condiments/mayonnaise/images/richard_hellmann-vetschau.de.jpg',
      name: 'Richard Hellmann',
      verifier: 'Verificador padrão nº2',
    ),
    ControlTile(
      date: DateTime.now(),
      imageUrl:
          'https://www.thenibble.com/reviews/main/condiments/mayonnaise/images/richard_hellmann-vetschau.de.jpg',
      name: 'Richard Hellmann',
    ),
    ControlTile(
      date: DateTime.now(),
      imageUrl:
          'https://www.thenibble.com/reviews/main/condiments/mayonnaise/images/richard_hellmann-vetschau.de.jpg',
      name: 'Richard Hellmann',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ControlSecondary(
      imgUrl: 'lib/assets/images/bascket.png',
      title: 'Controle da limpeza da caixa d\'água',
      registerList: dummyList,
    );
  }
}
