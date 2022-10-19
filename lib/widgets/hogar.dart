/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

class HogarWidget extends StatelessWidget {
/*  const HogarWidget({
    Key? key,
  }) : super(key: key);*/

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
        ),
        child: Text("hogar"));
  }
}
