/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HogarWidget extends StatelessWidget {
  /*const HogarWidget({
    Key? key,
  }) : super(key: key);*/

  //const HogarWidget({super.key});

  final String numero, calle, imagen;
  final bool dulce, disfraz;

  HogarWidget(
      {this.numero = "#625",
      this.calle = "Avenida Siempre Viva",
      this.imagen = "img_234957.png",
      this.dulce = true,
      this.disfraz = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black38,
      height: 150,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          //a la izquierda de todo
          Expanded(
            child: Container(
              //imagen
              //color: Colors.black26,
              width: 210,
              height: 140,
              //margin: EdgeInsets.symmetric(vertical: 5),
              margin: EdgeInsets.all(5),
              child: Image(
                image: AssetImage("assets/images/" + this.imagen),
              ),
            ),
          ),
          //entre de la imagen y todo lo demás
          Row(
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 100,
                child: Icon(MdiIcons.mapMarker, color: Colors.red, size: 33),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                //arriba del todo
                Container(
                    margin: EdgeInsets.only(top: 13),
                    //distancia superior
                    //color: Colors.black12,
                    //height: 120,
                    padding: EdgeInsets.all(4),
                    //child: Icon(Icons.location_city),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          this.numero,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    //alignment: Alignment.center,
                    //color: Colors.black38,
                    //height: 120,
                    padding: EdgeInsets.all(4),
                    //child: Icon(Icons.location_city),
                    child: Text(this.calle)),
                Spacer(),
                Container(
                  //color: Colors.black26,
                  //height: 120,
                  padding: EdgeInsets.all(4),
                  //child: Icon(Icons.location_city),
                  margin: EdgeInsets.only(bottom: 13),
                  child: Row(
                    children: [
                      Expanded(
                          child: Icon(
                        MdiIcons.skull,
                        size: 42,
                      )),
                      Expanded(
                          //hay que pasar este child como función ifelse
                          child: Icon(
                        MdiIcons.candy,
                        size: 42,
                      )),
                    ],
                  ),
                ),
                //abajo del todo
              ],
            ),
          ),
        ],
      ),
    );
  }

  //funcion ifelse para pasar icono candy/candyoff y skull/outlined

}
