// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';
import 'package:flutter_roro_001/widgets/phone_bar.dart';
import 'package:flutter_roro_001/widgets/web_bar.dart';

class NextPage extends StatelessWidget {
  double opacity = 0.5;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    return Scaffold(
      appBar: (screenSize == ScreenSize.small)
          ? PhoneBar(
              opacity: opacity,
            )
          : WebBar(
              size: size,
              opacity: opacity,
            ),
      body: Center(
        child: Text("Nous sommes passés à la page suivante"),
      ),
    );
  }
}
