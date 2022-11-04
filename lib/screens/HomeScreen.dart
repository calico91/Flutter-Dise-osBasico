import 'package:diseno_basico/widgets/Background.dart';
import 'package:diseno_basico/widgets/NavegacionInferior.dart';
import 'package:diseno_basico/widgets/Tarjetas.dart';
import 'package:diseno_basico/widgets/TituloPagina.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody()
        ]
      ),
      bottomNavigationBar:NavegacionInferior() ,
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TituloPagina(),
          Tarjetas(),

        ]
      ),
    );
  }
}