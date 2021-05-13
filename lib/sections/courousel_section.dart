import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_roro_001/models/courousel_image.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';
import 'package:flutter_roro_001/widgets/title_text.dart';

import '../constants.dart';

class CarouselSection extends StatefulWidget {
  @override
  createState() => CarouselState();
}

class CarouselState extends State<CarouselSection> {
  int index = 0;
  CarouselController _carouselController = CarouselController();

  List<CarouselImage> images = [
    CarouselImage(name: "Brownies", path: brownieImage),
    CarouselImage(name: "Cheesecake", path: cheesecakeImage),
    CarouselImage(name: "Gateau au choco", path: chocoImage),
    CarouselImage(name: "Cupcake", path: cupcakeImage),
    CarouselImage(name: "Donuts", path: donutsImage),
    CarouselImage(name: "Tiramisu", path: tiramisuImage),
    CarouselImage(name: "wedding", path: weddingImage),
  ];

  Widget card(CarouselImage image) {
    return Container(
      child: Center(
          child: Text(
        image.name,
        style: TextStyle(color: Colors.black, fontSize: 25),
      )),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: Image.asset(
          image.path,
          fit: BoxFit.cover,
        ).image,
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = images
        .map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.asset(
                e.path,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    CarouselOptions options = CarouselOptions(
        autoPlay: true,
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
        onPageChanged: (newIndex, reason) {
          setState(() {
            index = newIndex;
          });
        });
    return Column(
      children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.only(top: 40, bottom: 20, left: 15)),
            TitleText(string: "Le Carousel de gateaux"),
            Expanded(child: Container())
          ],
        ),
        CarouselSlider(
          items: items,
          options: options,
          carouselController: _carouselController,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: (screenSize !=
                  ScreenSize
                      .small) // Ne pas Afficher le texte en dessous en mode small - Test version 1
              ? Card(
                  color: pinkColor,
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < images.length; i++)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                child: Text((screenSize !=
                                        ScreenSize
                                            .small) // Afficher uniquement le no en mode small - ou Test version 2
                                    ? images[i].name
                                    : i.toString()),
                                onTap: () {
                                  _carouselController.animateToPage(i);
                                },
                              ),
                              Visibility(
                                  maintainAnimation: true,
                                  maintainSize: true,
                                  maintainState: true,
                                  visible: (index == i),
                                  child: AnimatedOpacity(
                                    opacity: 1,
                                    duration: Duration(milliseconds: 750),
                                    child: Container(
                                      height: 5,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(2.5)),
                                    ),
                                  ))
                            ],
                          )
                      ],
                    ),
                  ))
              : Container(),
        ),
      ],
    );
  }
}
