import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/widgets/title_text.dart';

class AboutMeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(30),
        width: size.width,
        //height: size.height / 2.5,
        color: pinkColor,
        child: Column(children: [
          Row(
            children: [
              TitleText(string: "A propos de moi"),
              Expanded(
                child: Container(),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              SizedBox(
                height: size.height / 6,
                width: size.width / 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size.height / 6),
                  child: Image.asset(
                    athenaImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Text(
            aboutMe,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
          )
        ]));
  }
}
