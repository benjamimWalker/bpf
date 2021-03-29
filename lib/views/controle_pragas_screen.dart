import 'package:flutter/material.dart';
import 'package:bpf/views_models/control_screen.dart';
import 'package:bpf/widgets/bpbutton.dart';

class ControlePragasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttons = [
      BpButton(
        label: 'Registros de ocorrências de pragas',
        height: 70,
      ),
      BpButton(
        label: 'Checklist para controle integrado de pragas',
        height: 70,
      ),
    ];
    return ControlScreen(
      buttons: buttons,
      imagePath: 'lib/assets/images/bug.png',
      title: 'Controle de pragas',
      imageScale: 0.5,
    );
  }
}
