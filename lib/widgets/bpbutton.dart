import 'package:flutter/material.dart';
import 'package:bpf/views/controle_limpeza_caixa_agua.dart';
import 'package:bpf/views/controle_teor_cloro_cor_odor.dart';
import 'package:bpf/views_models/controle_secundario.dart';

class BpButton extends StatelessWidget {
  final String label;
  final double height;
  const BpButton({this.label, this.height});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: height),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white70),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => ControlLimpezaCaixaAgua()));
            //ControlTeorCloroCorOdor
            //ControlLimpezaCaixaAgua
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    label,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 17,
                        color: Colors.grey[700]),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[700],
                )
              ],
            ),
          )),
    );
  }
}
