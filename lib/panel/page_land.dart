part of 'page_portrait.dart';

class PageLand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    height -= MediaQuery.of(context).viewInsets.vertical;
    return SizedBox.expand(
      child: Container(
        // color: BACKGROUND_COLOR,
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
                    Image.asset(
                      "assets/icons/bg.png",
                      width: 200,
                      height: 100,
                      color: Colors.white,
                    ),
                    SystemButtonGroup(),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, bottom: 40),
                      child: DropButton(),
                    )
                  ],
                ),
              ),
              _ScreenDecoration(child: Screen.fromHeight(height * 0.8)),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    DirectionController(),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
