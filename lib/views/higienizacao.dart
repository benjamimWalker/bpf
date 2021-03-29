import 'package:flutter/material.dart';
import 'package:bpf/views_models/control_screen.dart';
import 'package:bpf/widgets/bpbutton.dart';

class HigienizacaoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttons = [
      BpButton(
        label: 'Avaliação das condições de higiene e conduta pessoal',
        height: 70,
      ),
      BpButton(
        label: 'Avaliação da eficiência da higienização',
        height: 70,
      ),
      BpButton(
        label:
            'Manutenção de facilidades e aquisição de produtos para higienização',
        height: 70,
      ),
      BpButton(
        label:
            'Higienização dos coletores e da área de armazenamento de resíduos',
        height: 70,
      ),
    ];
    return ControlScreen(
      buttons: buttons,
      imagePath: 'lib/assets/images/brush.png',
      title: 'Higienização',
      imageScale: 1.5,
    );
  }
}
