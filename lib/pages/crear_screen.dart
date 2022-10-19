/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

class CrearScreen extends StatefulWidget {
  const CrearScreen({super.key});

  @override
  State<CrearScreen> createState() => _CrearScreenState();
}

class _CrearScreenState extends State<CrearScreen> {
  String? numeroController;
  String? calleController;

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
        height: 250,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                alignment: Alignment.centerLeft,
                height: 100,
                width: double.infinity,
                //color: Color(Colors.amber),
                //alignment: Alignment.center,
                child: Image(image: AssetImage("assets/images/img_234957.png")),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    alignment: Alignment.centerLeft,
                    height: 52,
                    width: double.infinity,
                    //color: Color(Colors.amber),
                    //alignment: Alignment.center,
                    child: TextField(
                      //controller: numeroController,
                      decoration: InputDecoration(
                        hintText: "Número de casa",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    alignment: Alignment.centerLeft,
                    height: 52,
                    width: double.infinity,
                    //color: Color(Colors.amber),
                    //alignment: Alignment.center,
                    child: TextField(
                      //controller: numeroController,
                      decoration: InputDecoration(
                        hintText: "Nombre de calle",
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      alignment: Alignment.centerLeft,
                      height: 52,
                      width: double.infinity,
                      //color: Color(Colors.amber),
                      //alignment: Alignment.center,
                      child: Text("text")),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      alignment: Alignment.centerLeft,
                      height: 52,
                      width: double.infinity,
                      //color: Color(Colors.amber),
                      //alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text("text"),
                          Text("text"),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
