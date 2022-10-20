/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HogarWidget extends StatelessWidget {
  /*const HogarWidget({
    Key? key,
  }) : super(key: key);*/

  /*final String numero, calle,
  final bool dulce, disfraz,*/

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
          Expanded(
            child: Container(
              //imagen
              //color: Colors.black26,
              width: 210,
              height: 140,
              //margin: EdgeInsets.symmetric(vertical: 5),
              margin: EdgeInsets.all(5),
              child: Image(
                image: AssetImage("assets/images/img_234957.png"),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 13),
                    //distancia superior
                    //color: Colors.black12,
                    //height: 120,
                    padding: EdgeInsets.all(4),
                    //child: Icon(Icons.location_city),
                    child: Row(
                      children: [
                        Icon(
                          MdiIcons.mapMarker,
                          color: Colors.red,
                        ),
                        Text(
                          "#625",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    //color: Colors.black38,
                    //height: 120,
                    padding: EdgeInsets.all(4),
                    //child: Icon(Icons.location_city),
                    child: Text("Avenida Siempre Viva")),
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
                            child: Icon(
                          MdiIcons.candy,
                          size: 42,
                        )),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
