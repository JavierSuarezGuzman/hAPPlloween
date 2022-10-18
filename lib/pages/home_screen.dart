/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.halloween),
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0, //le quita la sombra al appBar
        title: Text("hAPPloween"),
      ),
      body: Center(
        child: Text("Holaween"),
      ),
    );
  }
}
