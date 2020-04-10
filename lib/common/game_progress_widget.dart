import 'package:flutter/material.dart';
import '../styles/colors.dart';

class GameProgressWidget extends StatefulWidget {
  final double gameProgress;
  final double screenWidth;

  const GameProgressWidget(
      {Key key, @required this.gameProgress, this.screenWidth})
      : super(key: key);

  @override
  _GameProgressWidgetState createState() => _GameProgressWidgetState();
}

class _GameProgressWidgetState extends State<GameProgressWidget>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> progressAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    progressAnimation = Tween<double>(
            begin: 0,
            end: ((widget.screenWidth * 0.33) - 32.0) * widget.gameProgress)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = (widget.screenWidth * 0.33) - 32.0;

    return AnimatedBuilder(
      animation: progressAnimation,
      builder: (context, widget) {
        return Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  border: Border.all(color: tertiaryTextColor, width: 1)),
            ),
            Container(
              width: progressAnimation.value,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                gradient: appGradient,
              ),
            )
          ],
        );
      },
    );
  }
}
