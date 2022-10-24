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
        //color: Colors.black38,
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
                          margin: EdgeInsets.only(bottom: 9),
                          child: Text("Agregar imagen")),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        //alignment: Alignment.centerLeft,
                        height: 100,
                        width: double.infinity,
                        //color: Color(Colors.amber),
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
                          //height: 42,
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          child: Text("Número de casa")),
                      Container(
                        margin: EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        height: 42,
                        width: double.infinity,
                        //alignment: Alignment.center,
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
                          child: Text("Nombre de calle")),
                      Container(
                        margin: EdgeInsets.all(4),
                        alignment: Alignment.centerLeft,
                        height: 42,
                        width: double.infinity,
                        //color: Colors.amber,
                        //alignment: Alignment.center,
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
                          alignment: Alignment.centerLeft,
                          height: 33,
                          width: double.infinity,
                          child: Text("Dan dulces")),
                      Container(
                          //
                          height: 42,
                          child: Row(
                            children: [
                              Expanded(
                                child: RadioListTile<bool>(
                                  groupValue: dulceRadio,
                                  title: Text("SI"),
                                  value: true,
                                  onChanged: (dulce) {
                                    print("object");
                                  },
                                ),
                              ),
                              Expanded(
                                child: RadioListTile<bool>(
                                  groupValue: dulceRadio,
                                  title: Text("NO"),
                                  value: false,
                                  onChanged: (dulce) {
                                    print("object");
                                  },
                                ),
                              ),
                            ],
                          )),
                      Divider(),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          alignment: Alignment.centerLeft,
                          height: 33,
                          width: double.infinity,
                          child: Text("Disfraces o ambientación")),
                      Container(
                        //
                        height: 42,
                        child: Row(
                          children: [
                            /*RadioListTile<bool>(
                              groupValue: disfrazRadio,
                              title: Text("SI"),
                              value: true,
                              onChanged: (disfraz) {
                                print("object");
                              },
                            ),
                            RadioListTile<bool>(
                              groupValue: disfrazRadio,
                              title: Text("NO"),
                              value: false,
                              onChanged: (disfraz) {
                                print("object");
                              },
                            ),*/
                            Expanded(
                              child: RadioListTile<bool>(
                                groupValue: disfrazRadio,
                                title: Text("SI"),
                                value: true,
                                onChanged: (disfraz) {
                                  print("object");
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<bool>(
                                groupValue: disfrazRadio,
                                title: Text("NO"),
                                value: false,
                                onChanged: (disfraz) {
                                  print("object");
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
                //Spacer(),
                Expanded(
                  child: Container(
                    //color: Colors.orange,
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
