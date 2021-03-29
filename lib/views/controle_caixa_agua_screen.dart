import 'package:flutter/material.dart';
import 'package:bpf/views_models/control_screen.dart';
import 'package:bpf/widgets/bpbutton.dart';

class ControleCaixaDaguaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttons = [
      BpButton(
        label: 'Controle da limpeza da caixa d\'água',
        height: 70,
      ),
      BpButton(
        label: 'Controle do teor de cloro, cor e odor da água',
        height: 70,
      ),
      BpButton(
        label: 'Controle da manutenção da caixa d\'água',
        height: 70,
      ),
      BpButton(
        label: 'Abastecimento de água',
        height: 70,
      ),
    ];
    return ControlScreen(
      buttons: buttons,
      imagePath: 'lib/assets/images/bascket.png',
      title: 'Controle de caixa d\'água',
    );
  }
}
