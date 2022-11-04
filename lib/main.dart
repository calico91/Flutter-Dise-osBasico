import 'package:diseno_basico/screens/BasicDesingC.dart';
import 'package:diseno_basico/screens/Desing2.dart';
import 'package:diseno_basico/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'screens/BasicDesingF.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño',
      initialRoute: 'HomeScreen',
      routes: {
        'BasicDesingC': (_) => BasicDesingC(),
        'Desing2': (_) => Desing2(),
        'HomeScreen': (_) => HomeScreen()

      },
    );
  }
}
  
