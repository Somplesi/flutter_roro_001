import 'package:flutter/material.dart';
import 'package:flutter_roro_001/widgets/container_button.dart';
import 'package:flutter_roro_001/widgets/container_text_and_image.dart';

class TopStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ContainerTextAndImage(), ContainerButton()],
    );
  }
}
