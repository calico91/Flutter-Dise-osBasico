import 'package:flutter/material.dart';


class BasicDesingC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage('images/bote.jpg'),
          ),
          const _TituloCalificacion(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _Iconos(Icons.call, 'call'),
                _Iconos(Icons.location_pin, 'route'),
                _Iconos(Icons.share, 'Share')
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 280,
            height: 150,
            child: Text(
                'Irure nulla consectetur ad ea non velit cillum.Irure nulla consectetur ad ea non velit cillum.Irure nulla consectetur ad ea non velit cillum.Irure nulla consectetur ad ea non velit cillum.Irure nulla consectetur ad ea non velit cillum.Irure nulla consectetur ad ea non velit cillum.Irure nulla consectetur ad ea non velit cillum.',
                maxLines: 8,
                overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}

class _Iconos extends StatelessWidget {
  final IconData icono;
  final String titulo;

  const _Iconos(this.icono, this.titulo);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
          size: 40,
        ),
        const SizedBox(height: 10),
        Text(
          titulo.toUpperCase(),
          style: TextStyle(color: Colors.blue, fontSize: 15),
        )
      ],
    );
  }
}

class _TituloCalificacion extends StatelessWidget {
  const _TituloCalificacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Kandersteg, Switzerland'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.red,
                size: 30,
              ),
              Text(
                '41',
                style: TextStyle(fontSize: 30),
              )
            ],
          )
        ],
      ),
    );
  }
}
