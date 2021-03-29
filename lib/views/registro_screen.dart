import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _form = GlobalKey<FormState>();
  void _saveForm() {
    bool _isValid = _form.currentState.validate();
    if (!_isValid) return;
    _form.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white30,
          title: Text('Registro',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600)),
          centerTitle: true,
        ),
        body: Form(
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(50, 165, 165, 205),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    onSaved: (text) {},
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Observações',
                        contentPadding: EdgeInsets.only(left: 10)),
                    validator: (text) {
                      if (text.trim().isEmpty)
                        return 'Este campo não deve estar vazio';
                      return null;
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(50, 165, 165, 205),
                  ),
                  child: TextFormField(
                    onSaved: (text) {},
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Ações corretivas',
                        contentPadding: EdgeInsets.only(left: 10)),
                    validator: (text) {
                      if (text.trim().isEmpty)
                        return 'Este campo não deve estar vazio';
                      return null;
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: ElevatedButton(
                    onPressed: _saveForm,
                    child: Text(
                      'Salvar',
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).accentColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom > 0 ? 0 : 35)
            ],
          ),
        ));

    // COLOCAR A MUDANÇA DE FOCO E VALIDAÇÃO
  }
}
