/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

class CrearScreen extends StatefulWidget {
  const CrearScreen({super.key});

  @override
  State<CrearScreen> createState() => _CrearScreenState();
}

class _CrearScreenState extends State<CrearScreen> {
  /*String? numeroController;
  String? calleController;*/

  bool dulceRadio = true;
  bool disfrazRadio = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crear un registro"),
        foregroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        height: 420,
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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  //Imagen
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 13),
                          child: Text("Agregar imagen")),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        height: 100,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Image(
                            image: AssetImage("assets/images/img_234957.png")),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          child: Text("Número de casa")),
                      Container(
                        margin: EdgeInsets.all(4),
                        height: 42,
                        width: double.infinity,
                        child: TextField(
                          //controller: numeroController,
                          decoration: InputDecoration(
                            hintText: "Número de casa",
                            /*cambiar los hint text por 
                            labelText: "Número de casa",*/
                          ),
                        ),
                      ),
                      Divider(),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Nombre de calle")),
                      Container(
                        margin: EdgeInsets.all(4),
                        height: 42,
                        width: double.infinity,
                        child: TextField(
                          //controller: calleController,
                          decoration: InputDecoration(
                            hintText: "Nombre de calle",
                          ),
                        ),
                      ),
                      Divider(),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          alignment: Alignment.bottomLeft,
                          height: 33,
                          width: double.infinity,
                          child: Text("Entregan dulces")),
                      Container(
                          height: 42,
                          child: Row(
                            children: [
                              Expanded(
                                child: RadioListTile<bool>(
                                  groupValue: dulceRadio,
                                  title: Text("Si"),
                                  value: true,
                                  onChanged: (dulces) {
                                    setState(() {
                                      dulceRadio = dulces!;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RadioListTile<bool>(
                                  groupValue: dulceRadio,
                                  title: Text("No"),
                                  value: false,
                                  onChanged: (dulces) {
                                    setState(() {
                                      dulceRadio = dulces!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )),
                      Divider(),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          alignment: Alignment.bottomLeft,
                          height: 33,
                          width: double.infinity,
                          child: Text("Existe ambientación o disfraces")),
                      Container(
                        height: 42,
                        child: Row(
                          children: [
                            Expanded(
                              child: RadioListTile<bool>(
                                groupValue: disfrazRadio,
                                title: Text("Si"),
                                value: true,
                                onChanged: (disfraz) {
                                  setState(() {
                                    disfrazRadio = disfraz!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<bool>(
                                groupValue: disfrazRadio,
                                title: Text("No"),
                                value: false,
                                onChanged: (disfraz) {
                                  setState(() {
                                    disfrazRadio = disfraz!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: OutlinedButton(
                      child: Text(
                        "Volver",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    /* opción de botón
                    //color: Colors.orange,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          side: BorderSide(color: Colors.deepOrange)),
                      child: Text("Guardar",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        //pasar formulario
                      },
                    ),
                    */
                    child: OutlinedButton(
                      child: Text(
                        "Guardar",
                        //style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        //pasar formulario
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
