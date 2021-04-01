import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bpf/views/controle_caixa_agua_screen.dart';
import 'package:bpf/views_models/controle_secundario.dart';

import 'views/controle_pragas_screen.dart';
import 'views/higienizacao.dart';
import 'package:firebase_core/firebase_core.dart';
import 'views/registro_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(PbfApp());
}

class PbfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          const Locale('pt', 'BR')
        ],
        theme: ThemeData(
            buttonTheme: ButtonThemeData(buttonColor: Color(0xff14A18A)),
            appBarTheme: AppBarTheme(
              color: Color(0xff14A18A),
            ),
            accentColor: Color(0xff14A18A),
            fontFamily: 'Poppins-Regular'),
        home: Register());
    // HigienizacaoScreen
    // ControleCaixaDaguaScreen
    // ControlePragasScreen
    // ControlSecondary
  }
}
