import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:custom_welding_shop/app/modules/home/views/home_view.dart';
import 'package:custom_welding_shop/app/modules/home/widgets/home.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/getaquote_controller.dart';

class GetaquoteView extends GetView<GetaquoteController> {
  @override
  Widget build(BuildContext context) {
    fullScreen = (MediaQuery.of(context).size.width >= kDesktopBreakpoint)
        ? true
        : false;
    return Scaffold(
        backgroundColor: AppColors.RedColor,
        appBar: AppBar(
          elevation: 0,
          title: Padding(
            padding: fullScreen
                ? const EdgeInsets.only(left: 45)
                : const EdgeInsets.only(left: 20),
            child: Text('Request a quote',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.Maroon,
                    fontWeight: FontWeight.bold)),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: !fullScreen ? 20 : 45),
              child: Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      fullScreen
                          ? GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.only(
                                  left: 55, right: 55, top: 25, bottom: 15),
                              itemCount: 8,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 25,
                                      mainAxisSpacing: 15,
                                      mainAxisExtent: 81,
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                return TextFieldCustom(namesOfFields[index]);
                              })
                          : ListView.builder(
                              itemCount: 8,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 25),
                                  child: TextFieldCustom(namesOfFields[index]),
                                );
                              }),
                      OtherInputFields(
                          'Upload file',
                          Container(
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xffFEAAC2),
                              height: 120,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Click below to upload a file',
                                      style:
                                          TextStyle(color: AppColors.LightRed),
                                    ),
                                    Container(height: 5),
                                    navButton(
                                        name: 'Upload',
                                        textColor: AppColors.Maroon,
                                        buttonColor: AppColors.LightRed)
                                  ]))).paddingOnly(top: 10),
                      OtherInputFields(
                          'Message',
                          Container(
                              color: Colors.white,
                              height: 120,
                              child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                                maxLines: 3,
                                cursorColor: AppColors.RedColor,
                              )))
                    ],
                  )),
              padding: const EdgeInsets.all(20)),
        ));
  }
}

class TextFieldCustom extends StatelessWidget {
  final String name;

  TextFieldCustom(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 81,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$name', style: TextStyle(color: Colors.white)),
            Container(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextField(
                  cursorColor: AppColors.RedColor,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white)),
            ),
          ],
        ));
  }
}

class OtherInputFields extends StatelessWidget {
  final String name;
  final Widget child;

  OtherInputFields(this.name, this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(color: Colors.white)),
          Container(height: 20),
          child
        ],
      ),
    );
  }
}
