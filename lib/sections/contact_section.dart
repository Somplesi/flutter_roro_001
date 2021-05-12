import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/widgets/title_text.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: pinkColor,
        width: size.width,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TitleText(string: "Contact:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: social()),
                Column(children: [
                  Text("Contactez-nous"),
                  TextButton(
                      onPressed: null, child: Text("Tél: 06.06.06.06.06")),
                  TextButton(
                      onPressed: null, child: Text("Mail: contact@roddata.net"))
                ]),
              ],
            )
          ],
        ));
  }

  List<Widget> social() {
    List<Widget> items = [Text("Social")];
    items.addAll(getSocialButtons());
    return items;
  }
}
