import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:custom_welding_shop/app/global/widgets/nav.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/aboutus_controller.dart';

class AboutusView extends GetView<AboutusController> {
  @override
  Widget build(BuildContext context) {
    fullScreen = (MediaQuery.of(context).size.width >= kDesktopBreakpoint)
        ? true
        : false;
    var textStyle = TextStyle(
        fontSize: 20, color: AppColors.Maroon, fontWeight: FontWeight.bold);
    return Scaffold(
        backgroundColor: AppColors.RedColor,
        appBar: AppBar(
          elevation: 0,
          title: Padding(
            padding: fullScreen
                ? const EdgeInsets.only(left: 45.0)
                : const EdgeInsets.only(left: 25),
            child: Text('About Us', style: textStyle),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: !fullScreen
                ? const EdgeInsets.all(25)
                : const EdgeInsets.symmetric(vertical: 30, horizontal: 55),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: !fullScreen
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width / 2,
                  height: !fullScreen ? 250 : 400,
                  child: Image.asset('assets/images/Works  _-40.jpg',
                      fit: BoxFit.cover)),
              Container(height: 30),
              Text('WHO ARE WE?', style: textStyle),
              Container(
                  child: Text(
                      'Lorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam neque Lorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam neque ',
                      style: TextStyle(color: Colors.white))),
              Container(height: 30),
              Text('WHY CUSTOM WAY?', style: textStyle),
              Container(
                  child: Text(
                      'Lorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam neque Lorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam nequeLorem ipsum dolor sit amet,augue id volutpat congue. Morbi lobortis dapibus molestie. Aenean in orci in quam euismod rhoncus eu eget est. Aliquam id dignissim elit. Aliquam neque ',
                      style: TextStyle(color: Colors.white))),
              Container(height: 20),
            ]),
          ),
        ));
  }
}

// return Container(color : Colors.yellow google controller when google ocn)