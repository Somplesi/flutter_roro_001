import 'package:flutter/material.dart';
import 'package:flutter_roro_001/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: WebBar(size: size),
      body: Center(
        child: Text("Notre première Web App"),
      ),
    );
  }
}
