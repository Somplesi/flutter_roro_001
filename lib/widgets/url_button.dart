import 'package:flutter/material.dart';
import 'package:flutter_roro_001/models/url_class.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlButton extends StatelessWidget {
  final UrlClass urlClass;

  UrlButton({@required this.urlClass});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: launchUrl, child: Text(urlClass.name));
  }

  launchUrl() async {
    await canLaunch(urlClass.url)
        ? await launch(urlClass.url)
        : throw 'Impossible à lancer ${urlClass.name}';
  }
}
