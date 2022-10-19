/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';
import 'package:happloween/pages/crear_screen.dart';
import 'package:happloween/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hAPPlloween',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      //home: HomeScreen(),
      routes: {
        "/": (context) => HomeScreen(),
        "/create": (context) => CrearScreen(),
      },
      initialRoute: "/",
    );
  }
}
