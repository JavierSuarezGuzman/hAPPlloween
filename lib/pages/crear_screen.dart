/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

class CrearScreen extends StatefulWidget {
  const CrearScreen({super.key});

  @override
  State<CrearScreen> createState() => _CrearScreenState();
}

class _CrearScreenState extends State<CrearScreen> {
  final formKey = GlobalKey<FormState>();

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
      backgroundColor: Colors.white70,
      body: Form(
        key: formKey,
        child: Container(
          width: double.infinity,
          height: 420,
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            /*image: DecorationImage(
                image: AssetImage("assets/images/spider.jpg"),
                fit: BoxFit.cover),*/
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
                            child: Text("Entregan dulces")),
                        campoDulces(),
                        Divider(),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.bottomLeft,
                            height: 33,
                            width: double.infinity,
                            child: Text("Existe ambientación o disfraces")),
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
                          "Guardar",
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            //form ok
                            print("Formulario OK");
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
      decoration: InputDecoration(labelText: "Nombre de calle"),
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
      decoration: InputDecoration(labelText: "Número de casa"),
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
            margin: EdgeInsets.only(bottom: 13), child: Text("Agregar imagen")),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          child: Image(image: AssetImage("assets/images/img_234957.png")),
        ),
      ],
    );
  }
}
