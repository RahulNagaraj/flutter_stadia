import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/last_played_game_tile_widget.dart';
import '../models/last_plyed_game.dart';
import '../common/content_heading_widget.dart';
import '../common/avatar_widget.dart';
import '../styles/text_styles.dart';
import '../styles/colors.dart';
import '../image_asset.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;

    return Scaffold(
      body: Stack(
        children: [
          Transform.translate(
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
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.menu, color: primaryTextColor),
                      Icon(Icons.search, color: primaryTextColor),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: <Widget>[
                            AvatarWidget(
                              imagePath: player1,
                              isOnline: true,
                              showRanking: true,
                              ranking: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Hello', style: userNameTextStyle),
                                  TextSpan(text: '\n'),
                                  TextSpan(
                                      text: 'Jon Snow',
                                      style: userNameTextStyle)
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, right: 16.0, bottom: 16.0),
                        child: Material(
                          elevation: 4.0,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 16.0,
                              bottom: 32.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'HOURS PLAYED',
                                        style: hoursPlayedLabelTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text('297 Hours', style: hoursPlayedTextStyle)
                              ],
                            ),
                          ),
                        ),
                      ),
                      ContentHeadingWidget(heading: 'Last Played Games'),
                      for (var i = 0; i < lastPlayedGames.length; i++)
                        LastPlayedGameTileWidget(
                          lastPlayedGame: lastPlayedGames[i],
                          screenWidth: screenWidth,
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
