import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/models/button_object.dart';
import 'package:flutter_roro_001/pages/next_page.dart';
import 'package:flutter_roro_001/widgets/branding.dart';
import 'package:flutter_roro_001/widgets/hover_button.dart';

class WebBar extends PreferredSize {
  Size size;

  WebBar({@required this.size})
      : super(
            preferredSize: Size((size.width), (size.height / 3)),
            child: Container(
              padding: EdgeInsets.all(10),
              color: pinkColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Branding(),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HoverButton(
                          button: ButtonObject(
                              text: "Ma cuisine", destination: NextPage())),
                      HoverButton(
                          button: ButtonObject(
                              text: "Mes recettes", destination: NextPage())),
                      HoverButton(
                          button: ButtonObject(
                              text: "Blog", destination: NextPage()))
                    ],
                  )),
                  HoverButton(
                      button:
                          ButtonObject(text: "Log in", destination: NextPage()))
                ],
              ),
            ));
}
