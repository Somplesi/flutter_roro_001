import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/models/button_object.dart';
import 'package:flutter_roro_001/pages/next_page.dart';
import 'package:flutter_roro_001/widgets/branding.dart';
import 'package:flutter_roro_001/widgets/hover_button.dart';

class WebBar extends PreferredSize {
  Size size;
  double opacity;

  WebBar({@required this.size, @required this.opacity})
      : super(
            preferredSize: Size((size.width), (size.height / 3)),
            child: Container(
              padding: EdgeInsets.all(10),
              color: pinkColor.withOpacity(opacity),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Branding(),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: menuButtonHover(),
                  )),
                  HoverButton(
                      button:
                          ButtonObject(text: "Log in", destination: NextPage()))
                ],
              ),
            ));
}
