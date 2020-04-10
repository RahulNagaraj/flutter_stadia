import 'package:flutter/material.dart';
import 'package:flutterstadia/styles/text_styles.dart';

class PopularWithFriendsWidget extends StatelessWidget {
  final String imagePath;

  const PopularWithFriendsWidget({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                imagePath,
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 10,
            right: 20,
            child: InkWell(
              onTap: null,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                elevation: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text(
                    'Play',
                    textAlign: TextAlign.center,
                    style: playWhiteTextStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
