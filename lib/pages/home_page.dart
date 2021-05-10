import 'package:flutter/material.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';
import 'package:flutter_roro_001/widgets/container_button.dart';
import 'package:flutter_roro_001/widgets/container_text_and_image.dart';
import 'package:flutter_roro_001/widgets/drawer_small.dart';
import 'package:flutter_roro_001/widgets/phone_bar.dart';
import 'package:flutter_roro_001/widgets/top_stack.dart';
import 'package:flutter_roro_001/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    return Scaffold(
      appBar:
          (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(size: size),
      drawer: DrawerSmall(),
      body: SingleChildScrollView(
        child: Column(
          children: [TopStack()],
        ),
      ),
    );
  }
}
