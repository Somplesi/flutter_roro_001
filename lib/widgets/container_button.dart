import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';

class ContainerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Padding(
      padding: EdgeInsets.only(
          top: (size.height / 2) - ((screenSize == ScreenSize.small) ? 30 : 20),
          left: size.width / 7,
          right: size.width / 7),
      child: (screenSize == ScreenSize.small) ? small() : big(),
    ));
  }
}

Widget small() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: getFloating(),
  );
}

Widget big() {
  return Container(
    height: 40,
    child: Card(
      elevation: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: getCardHoverButton(),
      ),
    ),
  );
}
