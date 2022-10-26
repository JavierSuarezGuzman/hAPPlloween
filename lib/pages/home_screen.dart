/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'components/hogares_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.halloween),
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 21, // 0 le quita la sombra al appBar
        title: Text("hAPPlloween"),
      ),
      backgroundColor: Colors.white60,
      body: Center(
        child: HogaresList(),
      ),
//
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //print('cambiar a ventana de create');
          Navigator.pushNamed(context, "/create");
        },
      ),
    );
  }
}
