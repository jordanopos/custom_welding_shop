library web_navbar;

/// A Responsive web Navbar
/// YouTube: Gerson Morales Life
/// udemy: flutter web aplicaciones web responsivas y firebase cloud
import 'package:flutter/material.dart';

const kDesktopBreakpoint = 1024.0;
bool fullScreen;

//follow me on my Youtube channel: Gerson Morales Life
class WebNavbar extends StatelessWidget with PreferredSizeWidget {
  final List<TextButton> myButtons;
  final pathImage;
  final Text textNavbar;
  final Color hamburgerColor;
  final Color navColor;

  const WebNavbar(
      {Key key,
      this.myButtons,
      this.pathImage,
      this.textNavbar,
      this.hamburgerColor,
      this.navColor})
      : super(key: key);

  @override
  Size get preferredSize => Size(double.infinity, 80);

  @override
  Widget build(BuildContext context) {
    fullScreen = (MediaQuery.of(context).size.width >= kDesktopBreakpoint)
        ? true
        : false;

    return (fullScreen)
        ? Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            color: navColor,
            child: Row(children: [
              Container(
                width: 35/*  */,
              ),
              Image.asset(pathImage),
              Spacer(),
              textNavbar,
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: myButtons,
              ),
            ]),
          )

        //not full Screen
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            color: navColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(pathImage),
                textNavbar,

                //hamburger navbar icon
                Container(
                    height: 50.0,
                    width: 55.0,
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                          splashColor: hamburgerColor,
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                title: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    //you can use:
                                    //backspace_outlined
                                    //cancel_presentation_sharp
                                    //cancel_outlined
                                    //clear_rounded = X
                                    //close_fullscreen_rounded
                                    Icons.clear_rounded,
                                    size: 30.0,
                                    color: hamburgerColor,
                                  ),
                                ),
                                backgroundColor: Color(0xff89063C),
                                children: [
                                  Container(
                                    color: navColor,
                                    height: 350,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: myButtons,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 30.0,
                            color: hamburgerColor,
                          )),
                    )),
              ],
            ),
          );
  }
}
