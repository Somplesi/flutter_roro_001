import 'package:flutter/material.dart';
import 'package:flutter_roro_001/constants.dart';
import 'package:flutter_roro_001/models/review.dart';

class ReviewCard extends StatefulWidget {
  Size cardSize;
  Review review;
  ReviewCard({@required this.review, @required this.cardSize});
  @override
  createState() => RCState();
}

class RCState extends State<ReviewCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tapped");
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        height: widget.cardSize.height,
        width: (isHover) ? widget.cardSize.width + 30 : widget.cardSize.width,
        child: Card(
          borderOnForeground: false,
          shadowColor: Colors.transparent,
          elevation: (isHover) ? 7 : 0,
          color: pinkColor,
          child: Column(
            children: [
              Text(widget.review.name),
              Expanded(
                child: ClipRRect(
                  child: Image.asset(
                    widget.review.image,
                    fit: BoxFit.cover,
                    width: widget.cardSize.width - 20,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Text(widget.review.comment)
            ],
          ),
        ),
      ),
    );
  }
}
