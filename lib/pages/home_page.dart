import 'package:flutter/material.dart';
import 'package:flutter_roro_001/models/make_it_responsive.dart';
import 'package:flutter_roro_001/sections/about_me_section.dart';
import 'package:flutter_roro_001/sections/contact_section.dart';
import 'package:flutter_roro_001/sections/courousel_section.dart';
import 'package:flutter_roro_001/sections/occasion_section.dart';
import 'package:flutter_roro_001/sections/quote_section.dart';
import 'package:flutter_roro_001/sections/review_section.dart';
import 'package:flutter_roro_001/widgets/drawer_small.dart';
import 'package:flutter_roro_001/widgets/phone_bar.dart';
import 'package:flutter_roro_001/sections/top_stack.dart';
import 'package:flutter_roro_001/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  double _currentUserPosition = 0;

  setupScrollListener() {
    setState(() {
      _currentUserPosition = _scrollController.position.pixels;
      //print(_currentUserPosition);
    });
  }

  @override
  void initState() {
    _scrollController.addListener(setupScrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    double opacity = MakeItResponsive()
        .getScrollingOpacity(_currentUserPosition, size.height);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: (screenSize == ScreenSize.small)
          ? PhoneBar(
              opacity: opacity,
            )
          : WebBar(
              size: size,
              opacity: opacity,
            ),
      drawer: DrawerSmall(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            TopStack(),
            OccasionSection(),
            AboutMeSection(),
            CarouselSection(),
            QuoteSection(),
            ReviewSection(),
            ContactSection()
          ],
        ),
      ),
    );
  }
}
