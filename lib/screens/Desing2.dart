import 'package:flutter/material.dart';


class Desing2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2(),

        ],)
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        //bacground 
        Background(),
        MainContect()

      ] );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30bad6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('images/scroll-1.png')));
  }

}

class MainContect extends StatelessWidget {
  const MainContect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 60,color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(top: 65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
          Text('11°',style: textStyle,),
          Text('Miercoles',style:textStyle,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,),
        ],),
      ),
    );
  }
}

class Page2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Color(0xff30bad6),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff0098fa),
            borderRadius:BorderRadius.all(Radius.circular(20)),
            boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.50),
              offset: Offset(10,10),
              blurRadius: 10
            )]
            
           ),
          padding: EdgeInsets.only(left: 50, right: 50, bottom: 5, top: 5),
          height: 55,
          child: TextButton(
            autofocus: true,
            onPressed: (){},
            child: Text('Bienvenido',style: TextStyle(color:Colors.white, fontSize: 25),),
            style:TextButton.styleFrom(
              //backgroundColor: Color(0xff0098fa),
        
              //elevation: 30,
              
            )),
        )),
    );
  }
}