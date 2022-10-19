/*Javier Suárez Guzmán
SPOOKtubre 2022 */

import 'package:flutter/material.dart';

import '../../widgets/hogar.dart';

class HogaresList extends StatelessWidget {
  const HogaresList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 160,
      //margin: EdgeInsets.all(6),
      //color: Colors.black12,
      child: ListView(
        children: [
          HogarWidget(),
          HogarWidget(),
          HogarWidget(),
        ],
      ),
    );
  }
}
