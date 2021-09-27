import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var headerStyle = TextStyle(color: AppColors.Maroon);
    var smallStyle = TextStyle(color: AppColors.Maroon, fontSize: 10);
    return Container(
      child: Row(children: [
        Expanded(
          child: Container(
            child: Column(children: [
              Container(height: 10),
              Text('CONTACT', style: headerStyle),
              Container(height: 10),
              Text('+256 771 866 101', style: smallStyle),
              Text('google@google.com', style: smallStyle)
            ]),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(children: [
              Container(height: 10),
              Text('ADDRESS', style: headerStyle),
              Container(height: 10),
              Text('Lweza Industrial Park', style: smallStyle),
            ]),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(children: [
              Container(height: 10),
              Text('FOLLOW', style: headerStyle),
              Container(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: AppColors.Maroon, size: 20),
                  Container(width: 2),
                  Icon(IcoFontIcons.linkedin,
                      color: AppColors.Maroon, size: 20),
                  Container(width: 2),
                  Icon(IcoFontIcons.instagram,
                      color: AppColors.Maroon, size: 20),
                  Container(width: 2),
                  Icon(IcoFontIcons.twitter, color: AppColors.Maroon, size: 20),
                ],
              )
            ]),
          ),
        ),
      ]),
      height: 100,
      color: Colors.black,
    );
  }
}

// the google flutter onp