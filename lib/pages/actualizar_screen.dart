/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

class ActualizarScreen extends StatefulWidget {
  const ActualizarScreen({super.key});

  @override
  State<ActualizarScreen> createState() => _ActualizarScreenState();
}

class _ActualizarScreenState extends State<ActualizarScreen> {
  final formKey = GlobalKey<FormState>();

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
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text("¿Seguro que desea eliminar?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("No")),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/");
                              },
                              child: Text("Eliminar")),
                        ],
                      );
                    });
              })
        ],
      ),
      backgroundColor: Colors.white70,
      body: Form(
        key: formKey,
        child: Container(
          width: double.infinity,
          height: 420,
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.orange),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 69,
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
                    child: campoImagen(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        campoNumero(),
                        Divider(),
                        campoCalle(),
                        Divider(),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.bottomLeft,
                            height: 33,
                            width: double.infinity,
                            child: Text("Siguen entregando dulces")),
                        campoDulces(),
                        Divider(),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.bottomLeft,
                            height: 33,
                            width: double.infinity,
                            child: Text("Existe aún ambientación")),
                        campoDisfraz(),
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
                      child: OutlinedButton(
                        child: Text(
                          "Actualizar",
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            //form ok
                            print("Formulario OK");
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content:
                                        Text("¿Seguro que desea actualizar?"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("No")),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, "/");
                                          },
                                          child: Text("Actualizar")),
                                    ],
                                  );
                                });
                          }
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
      ),
    );
  }

  Container campoDisfraz() {
    return Container(
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
    );
  }

  Container campoDulces() {
    return Container(
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
        ));
  }

  TextFormField campoCalle() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Cambiar nombre de calle"),
      validator: (numero) {
        if (numero!.isEmpty) {
          return "Debe introducir un nombre de calle";
        }
        return null;
      },
    );
  }

  TextFormField campoNumero() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Cambiar número de casa"),
      validator: (numero) {
        if (numero!.isEmpty) {
          return "Debe introducir un número de casa";
        }
        return null;
      },
    );
  }

  Column campoImagen() {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 13), child: Text("Cambiar imagen")),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            child: Image(image: AssetImage("assets/images/img_234957.png")),
          ),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Agregar imagen con:"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            //llamar a la galería
                          },
                          child: Text("Galería")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            //llamar a la cámara
                          },
                          child: Text("Camara")),
                    ],
                  );
                });
          },
        ),
      ],
    );
  }
}
