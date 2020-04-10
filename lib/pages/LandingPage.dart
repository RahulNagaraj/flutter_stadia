import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../styles/colors.dart';
import '../image_asset.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;

    return Scaffold(
      body: Transform.translate(
        offset: Offset(screenWidth * 0.3, 10.0),
        child: Transform.rotate(
          angle: -0.1,
          child: Stack(
            children: <Widget>[
              SvgPicture.asset(
                logo,
                height: logoHeight,
                color: logoTintColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
