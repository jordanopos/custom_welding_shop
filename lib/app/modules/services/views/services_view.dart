import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:custom_welding_shop/app/global/widgets/footer.dart';
import 'package:custom_welding_shop/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/services_controller.dart';

class ServicesView extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    fullScreen = (MediaQuery.of(context).size.width >= kDesktopBreakpoint)
        ? true
        : false;
    return Scaffold(
        backgroundColor: AppColors.RedColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.RedColor,
          title: Padding(
            padding: fullScreen
                ? const EdgeInsets.only(left: 45.0)
                : const EdgeInsets.only(left: 20),
            child: Text('Services',
                style: TextStyle(
                
                    fontSize: 20,
                    color: AppColors.Maroon,
                    fontWeight: FontWeight.bold)),
          ),
          centerTitle: false,
        ),
        body: Container(
          child: !fullScreen
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            child: buildtheimage(
                                'assets/images/Works  _-15.jpg', context)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            child: buildtheimage(
                                'assets/images/Works  _-11.jpg', context)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            child: buildtheimage(
                                'assets/images/Works  _-40.jpg', context)),
                      ),
                      Footer()
                    ]),
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 45),
                        child: Row(
                          children: [
                            Expanded(
                                child: buildtheimage(
                                    'assets/images/Works  _-15.jpg', context)),
                            Expanded(
                                child: buildtheimage(
                                    'assets/images/Works  _-11.jpg', context)),
                            Expanded(
                                child: buildtheimage(
                                    'assets/images/Works  _-40.jpg', context)),
                          ],
                        ),
                      ),
                      Footer()
                    ],
                  ),
                ),
        ));
  }
}

Widget buildtheimage(String imagePath, BuildContext context) {
  return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 1.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.black.withOpacity(0.4)),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Metal and door construction',
                  style: TextStyle(fontSize: 20, color: AppColors.Maroon)),
              Container(height: 40)
            ],
          )),
        ],
      ));
}
