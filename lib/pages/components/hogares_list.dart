/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

import '../../widgets/hogar.dart';

class HogaresList extends StatelessWidget {
  const HogaresList({
    Key? key,
  }) : super(key: key);

  /*  final listaHogares = [
    {
      'imagen' : 'luxury.webp',
      'numero' : '2801',
      'calle' : 'Av. Las Nieves',
      'dulce' : false,
      'disfraz' : false,
      'visible' : true
      },
    {
      'imagen' : 'house9.jpg',
      'numero' : '#123',
      'calle' : 'Calle Falsa',
      'dulce' : false,
      'disfraz' : false,
      'visible' : true
      },
    {
      'imagen' : 'two.webp',
      'numero' : '9966',
      'calle' : 'Av. Principal #625',
      'dulce' : true,
      'disfraz' : false,
      'visible' : true
      },
    {
      'imagen' : 'children.webp',
      'numero' : '#1',
      'calle' : '',
      'dulce' : true,
      'disfraz' : false,
      'visible' : true
      },
    {
      'imagen' : '',
      'numero' : '',
      'calle' : '',
      'dulce' : ,
      'disfraz' : ,
      'visible' : 
      },
    {
      'imagen' : '',
      'numero' : '',
      'calle' : '',
      'dulce' : ,
      'disfraz' : ,
      'visible' : 
      },
  ];
  */

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 160,
      //margin: EdgeInsets.all(6),
      color: Colors.black12,
      child: ListView(
        children: [
          HogarWidget(),
          HogarWidget(
            imagen: "luxury.webp",
            numero: "2801",
            calle: "Av. Las Nieves",
            dulce: false,
            disfraz: false,
            visible: true,
          ),
          HogarWidget(
            imagen: "house9.jpg",
            numero: "#123",
            calle: "Calle Falsa",
            dulce: false,
            disfraz: false,
            visible: true,
          ),
          HogarWidget(
            imagen: "two.webp",
            numero: "9966",
            calle: "Av. Principal #625",
            dulce: true,
            disfraz: false,
            visible: true,
          ),
          HogarWidget(
            imagen: "children.webp",
            numero: "#1",
            calle: "",
            dulce: true,
            disfraz: false,
            visible: true,
          ),
          HogarWidget(
              /*imagen: "",
            numero: "",
            calle: "",
            dulce: false,
            disfraz: false,
            visible: true,*/
              ),
          HogarWidget(
            //imagen: "",
            numero: "",
            calle: "",
            dulce: false,
            disfraz: false,
            visible: true,
          ),
          HogarWidget(),
        ],
      ),
    );
  }
}
