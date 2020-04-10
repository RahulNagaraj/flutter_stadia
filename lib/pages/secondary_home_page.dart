import 'package:flutter/material.dart';
import '../common/content_heading_widget.dart';
import '../common/popular_with_friends_widget.dart';
import '../models/last_plyed_game.dart';
import '../styles/text_styles.dart';
import '../styles/colors.dart';
import '../image_asset.dart';

class SecondaryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Stack(
            children: <Widget>[
              Image.asset(game_sekiro, height: 400, fit: BoxFit.fitHeight),
              Container(color: Colors.grey.withOpacity(0.5)),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.menu, color: Colors.white),
                          Icon(Icons.search, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'NEW GAME',
                              style: newGameTextStyle,
                            ),
                            TextSpan(text: '\n'),
                            TextSpan(
                                text: 'Sekiro: Shadows Dies Twice',
                                style: newGameNameTextStyle),
                          ]),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: null,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32.0, vertical: 8.0),
                            decoration: BoxDecoration(
                                gradient: appGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              'Play',
                              style: newGameTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ContentHeadingWidget(heading: 'Popular with friends'),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        for (var i = 0; i < popularWithFriends.length; i++)
                          PopularWithFriendsWidget(
                            imagePath: popularWithFriends[i],
                          )
                      ],
                    ),
                  ),
                )
              ],
            )),
        Expanded(
          flex: 3,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ContentHeadingWidget(heading: 'Continue Playing'),
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      height: screenHeight * 0.20,
                  decoration: BoxDecoration(
                      gradient: appGradient,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            child: Image.asset(
                              lastPlayedGames[0].imagePath,
                              height: screenHeight * 0.15,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 25,
                            right: 25,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: lastPlayedGames[0].name,
                                style: headingTwoTextStyle.copyWith(color: Colors.white, fontSize: 16.0)),
                            TextSpan(text: '\n'),
                            TextSpan(
                                text:
                                    '${lastPlayedGames[0].hoursPlayed} hours played',
                                style: bodyTextStyle.copyWith(color: Colors.white, fontSize: 16.0, height: 1.5))
                          ]),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
