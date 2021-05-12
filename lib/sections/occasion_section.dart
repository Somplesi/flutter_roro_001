import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';
import 'package:flutter_roro_001/models/occasion.dart';
import 'package:flutter_roro_001/widgets/occasion_widget.dart';
import 'package:flutter_roro_001/widgets/title_text.dart';

class OccasionSection extends StatelessWidget {
  List<Occasion> occasions = [
    Occasion(name: "Mariage", path: weddingImage),
    Occasion(name: "Anniversaire", path: birthdayImage),
    Occasion(name: "Autre...", path: cupcakeImage),
  ];
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    bool isSmall = (screenSize == ScreenSize.small);
    Size cardSize = isSmall ? size / 2 : size / 4;

    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              TitleText(string: "Occasions:"),
              Expanded(child: Container())
            ],
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Text(
                  "Il y a toujours une bonne occasion pour déguster un gâteau...")
            ],
          ),
          adaptedToSize(isSmall, cardSize)
        ],
      ),
    );
  }

  Widget adaptedToSize(bool small, Size size) {
    List<Widget> widgets = occasions.map((o) {
      return OccasionWidget(size: size, occasion: o);
    }).toList();
    return (small)
        ? Column(
            children: widgets,
          )
        : Row(
            children: widgets,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          );
  }
}
