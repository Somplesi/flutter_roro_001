// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_roro_001/widgets/web_bar.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: WebBar(
        size: size,
      ),
      body: Center(
        child: Text("Nous sommes passés à la page suivante"),
      ),
    );
  }
}
