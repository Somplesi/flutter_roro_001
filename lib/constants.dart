import 'package:flutter/material.dart';
import 'package:flutter_roro_001/pages/next_page.dart';
import 'package:flutter_roro_001/widgets/hover_button.dart';
import 'package:flutter_roro_001/widgets/url_button.dart';
import 'package:flutter_roro_001/models/url_class.dart';

import 'models/button_object.dart';

String birthdayImage = "images/bday.jpg";
String brownieImage = "images/brownie.jpg";
String cheesecakeImage = "images/cheesecake.jpg";
String chocoImage = "images/choco.jpg";
String cupcakeImage = "images/cupcake.jpg";
String donutsImage = "images/donuts.jpg";
String tiramisuImage = "images/tiramisu.jpg";
String weddingImage = "images/wedding.jpg";
String cupcakeLogo = "images/cupcake.png";
String homeImage = "images/home.jpg";
String athenaImage = "images/athena.jpeg";
String pleaseImage = "images/please.jpg";
String flowersImage = "images/flowers.jpg";
String lecheImage = "images/leche.jpg";
String babinesImage = "images/babines.jpg";
String dogImage = "images/dog.jpg";
String grumpyImage = "images/grumpy.png";
String mouthImage = "images/mouth.jpg";

// Color
Color pinkColor = Color.fromRGBO(231, 210, 209, 1);

// Button
List<ButtonObject> menuButton = [
  ButtonObject(text: "Ma cuisine", destination: NextPage()),
  ButtonObject(text: "Mes recettes", destination: NextPage()),
  ButtonObject(text: "Blog", destination: NextPage())
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((button) => HoverButton(button: button)).toList();

List<ButtonObject> containerButton = [
  ButtonObject(
      text: "Téléphone", destination: NextPage(), icon: Icon(Icons.phone)),
  ButtonObject(text: "Mail", destination: NextPage(), icon: Icon(Icons.mail)),
  ButtonObject(
      text: "Vision", destination: NextPage(), icon: Icon(Icons.person))
];

List<FloatingActionButton> getFloating() => containerButton
    .map((btn) => FloatingActionButton(
          onPressed: null,
          child: btn.icon,
          backgroundColor: pinkColor,
          heroTag: btn.text,
        ))
    .toList();

List<HoverButton> getCardHoverButton() =>
    containerButton.map((e) => HoverButton(button: e)).toList();

List<UrlClass> networks = [
  UrlClass(name: "Twitter", url: "https://www.twitter.com"),
  UrlClass(name: "RodData", url: "https://www.roddata.net")
];

List<UrlButton> getSocialButtons() =>
    networks.map((e) => UrlButton(urlClass: e)).toList();
