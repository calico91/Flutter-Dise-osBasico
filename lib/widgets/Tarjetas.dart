import 'dart:ui';
import 'package:flutter/material.dart';

class Tarjetas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _ModeloTarjeta(Color.fromRGBO(103, 194, 254, 50),
                Icons.games_outlined, 'General'),
            _ModeloTarjeta(Color.fromRGBO(154, 118, 246, 50), Icons.bus_alert,
                'Transport'),
          ],
        ),
        TableRow(
          children: [
            _ModeloTarjeta(Color.fromRGBO(250, 129, 235, 50),
                Icons.shopping_bag_outlined, 'Shopping'),
            _ModeloTarjeta(Color.fromRGBO(247, 156, 93, 1),
                Icons.blinds_closed_outlined, 'Bills'),
          ],
        ),
        TableRow(
          children: [
            _ModeloTarjeta(Color.fromRGBO(85, 124, 253, 50),
                Icons.movie_creation_rounded, 'Entertaiment'),
            _ModeloTarjeta(Color.fromRGBO(44, 219, 101, 100),
                Icons.sim_card_alert_rounded, 'Grocery'),
          ],
        ),
      ],
    );
  }
}

class _ModeloTarjeta extends StatelessWidget {
  final Color color;
  final IconData icono;
  final String descripcion;

  const _ModeloTarjeta(this.color, this.icono, this.descripcion);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 175,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.85),
              borderRadius: BorderRadius.circular(30),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  icono,
                  size: 35,
                  color: Colors.white,
                ),
                radius: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                descripcion,
                style: TextStyle(color: Colors.blue, fontSize: 18),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
