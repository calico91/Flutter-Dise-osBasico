import 'package:flutter/material.dart';
import 'dart:math';


class Background extends StatelessWidget {

    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2,0.8],
          colors: [
            Color(0xff2e305f),
            Color(0xff202333)
          ])
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //gradiente morado
          decoration: boxDecoration,
        ),
        _cajaRosa()
      ]
    );
  }
}

class _cajaRosa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100,
      left: -20,
      child: Transform.rotate(
        angle: -pi / 6,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1)
              ])
          ),
        ),
      ),
    );
  }
}