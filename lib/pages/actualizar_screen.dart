/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

class ActualizarScreen extends StatefulWidget {
  const ActualizarScreen({super.key});

  @override
  State<ActualizarScreen> createState() => _ActualizarScreenState();
}

class _ActualizarScreenState extends State<ActualizarScreen> {
  /*String? numeroController;
  String? calleController;*/

  bool dulceRadio = true;
  bool disfrazRadio = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Actualizar un registro"),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                //showDialog y en el builder el AlertDialog preguntando si está seguro que desea eliminar
                /* content: const Text('Seguro que desea eliminar'),
                    actions: <Widget>[
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: Theme.of(context).textTheme.labelLarge,
                        ),
                        child: const Text('No'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: Theme.of(context).textTheme.labelLarge,
                        ),
                        child: const Text('Eliminar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                    */
              })
        ],
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
                          child: Text("Cambiar imagen")),
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
                          child: Text("Cambiar número de casa")),
                      Container(
                        margin: EdgeInsets.all(4),
                        height: 42,
                        width: double.infinity,
                        child: TextField(
                          //controller: numeroController,
                          decoration: InputDecoration(
                            hintText: "Número de casa",
                          ),
                        ),
                      ),
                      Divider(),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Cambiar nombre de calle")),
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
                          child: Text("Siguen entregando dulces")),
                      Container(
                          height: 42,
                          child: Row(
                            children: [
                              Expanded(
                                child: RadioListTile<bool>(
                                  groupValue: dulceRadio,
                                  title: Text("Si"),
                                  value: true,
                                  onChanged: (dulce) {
                                    setState(() {
                                      dulceRadio = dulce!;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RadioListTile<bool>(
                                  groupValue: dulceRadio,
                                  title: Text("No"),
                                  value: false,
                                  onChanged: (dulce) {
                                    setState(() {
                                      dulceRadio = dulce!;
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
                          child: Text("Existe aún ambientación")),
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
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        //pasar formulario
                      },
                    ),
                    */
                    child: OutlinedButton(
                      child: Text(
                        "Actualizar",
                        //style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        //showDialog para confirmar que quiere actualizar

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
