import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/widgets/branding.dart';

class PhoneBar extends AppBar {
  PhoneBar()
      : super(title: Branding(), centerTitle: true, backgroundColor: pinkColor);
}
