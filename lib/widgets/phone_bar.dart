import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/widgets/branding.dart';

class PhoneBar extends AppBar {
  double opacity;
  PhoneBar({@required this.opacity})
      : super(
            title: Branding(),
            elevation: 0,
            centerTitle: true,
            backgroundColor: pinkColor.withOpacity(opacity));
}
