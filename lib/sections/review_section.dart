import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';
import 'package:flutter_roro_001/models/review.dart';
import 'package:flutter_roro_001/widgets/review_card.dart';
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
    double ratio = MakeItResponsive().getRatio(context);
    Size cardSize = size * ratio;
    List<Review> reviews = [archi, moustache, fleur, leche, gourmand, dog];
    List<ReviewCard> cards = reviews
        .map((e) => ReviewCard(
              review: e,
              cardSize: cardSize,
            ))
        .toList();
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
          ),
          MakeItResponsive().responsiveRows(cards, screenSize)
        ],
      ),
    );
  }
}
