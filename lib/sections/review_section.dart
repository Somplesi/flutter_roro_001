import 'package:flutter/material.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';
import 'package:flutter_roro_001/widgets/title_text.dart';

class ReviewSection extends StatefulWidget {
  @override
  createState() => ReviewState();
}

class ReviewState extends State<ReviewSection> {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              TitleText(string: "Ils ont aimé:"),
              Expanded(child: Container())
            ],
          )
        ],
      ),
    );
  }
}
