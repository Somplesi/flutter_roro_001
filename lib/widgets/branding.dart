import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';

class Branding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("La cuisine d'Athena",
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w900,
                fontSize: 20,
                fontStyle: FontStyle.italic)),
        Image.asset(
          cupcakeLogo,
          height: 40,
          width: 40,
        )
      ],
    );
  }
}
