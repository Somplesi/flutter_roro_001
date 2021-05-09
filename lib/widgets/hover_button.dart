import 'package:flutter/material.dart';
import 'package:flutter_roro_001/models/button_object.dart';

class HoverButton extends StatefulWidget {
  ButtonObject button;
  HoverButton({@required this.button});
  @override
  createState() => HoverState();
}

class HoverState extends State<HoverButton> {
  bool hoverValue = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.button.text ?? "",
                style: TextStyle(
                  color: (hoverValue) ? Colors.grey : Colors.red,
                ),
              ),
              Container(
                height: 2,
                width: 50,
                color: (hoverValue) ? Colors.grey : Colors.transparent,
              )
            ],
          )),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget.button.destination;
        }));
      },
      onHover: (hover) {
        setState(() {
          hoverValue = hover;
        });
        ;
      },
    );
  }
}
