import 'package:flutter/material.dart';

class NavegacionInferior extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152,1),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          
          icon:Icon(Icons.calendar_month),
          label: 'Calendario' ),
        BottomNavigationBarItem(
          icon:Icon(Icons.bar_chart_rounded),
          label: 'Grafica' ),
        BottomNavigationBarItem(
          icon:Icon(Icons.supervised_user_circle_outlined),
          label: 'Usuario' ),
      ]
    );
  }
}