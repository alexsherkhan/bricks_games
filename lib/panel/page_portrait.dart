import 'package:flutter/material.dart';
import 'package:bricks_games/main.dart';
import 'package:bricks_games/panel/controller.dart';
import 'package:bricks_games/panel/screen.dart';

part 'page_land.dart';

class PagePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenW = size.width * 0.8;

    return SizedBox.expand(
      child: Container(
        //color: BACKGROUND_COLOR,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xFF1C73B1),
                const Color(0xFF8E1095),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Padding(
          padding: MediaQuery.of(context).padding,
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/icons/bg.png",
                width: 200,
                height: 100,
                color: Colors.white,
              ),
              _ScreenDecoration(child: Screen(width: screenW)),
              Spacer(flex: 2),
              GameController(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ScreenDecoration extends StatelessWidget {
  final Widget child;

  const _ScreenDecoration({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              color: const Color(0xFF987f0f), width: SCREEN_BORDER_WIDTH),
          left: BorderSide(
              color: const Color(0xFF987f0f), width: SCREEN_BORDER_WIDTH),
          right: BorderSide(
              color: const Color(0xFFfae36c), width: SCREEN_BORDER_WIDTH),
          bottom: BorderSide(
              color: const Color(0xFFfae36c), width: SCREEN_BORDER_WIDTH),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
        child: Container(
          padding: const EdgeInsets.all(3),
          color: SCREEN_BACKGROUND,
          child: child,
        ),
      ),
    );
  }
}
