import 'package:Shop/constant.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Carouselv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SizedBox(
        height: 160.0,
        width: 400.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          autoplay: true,
          animationCurve: Curves.decelerate,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 6.0,
          dotIncreasedColor: kPrimaryColor,
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomCenter,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [
            ExactAssetImage("assets/images/fcupcake1.jpg"),
            ExactAssetImage("assets/images/fcupcake2.jpg"),
            ExactAssetImage("assets/images/fcupcake3.jpg"),
            ExactAssetImage("assets/images/fcupcake4.jpg"),
          ],
        ),
      ),
    );
  }
}
