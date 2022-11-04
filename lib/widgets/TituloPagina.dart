
import 'package:flutter/material.dart';



class TituloPagina extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(bottom: 10,top: 30,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(
              fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 8),
            Text('Classify this transacion into a \nparticular category',style: TextStyle(
              fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
          ],
        )
      ),
    );
  }
}