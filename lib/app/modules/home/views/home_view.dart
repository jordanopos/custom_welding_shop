import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:custom_welding_shop/app/global/widgets/nav.dart';
import 'package:custom_welding_shop/app/modules/aboutus/views/aboutus_view.dart';
import 'package:custom_welding_shop/app/modules/getaquote/views/getaquote_view.dart';
import 'package:custom_welding_shop/app/modules/products/views/products_view.dart';
import 'package:custom_welding_shop/app/modules/projects/views/projects_view.dart';
import 'package:custom_welding_shop/app/modules/services/views/services_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:custom_welding_shop/app/modules/home/widgets/home.dart';
import '../controllers/home_controller.dart';

var kDesktopBreakpoint = 1024.0;

List<String> namesOfFields = [
  'Name',
  'Email',
  'Phone Number',
  'Location',
  'Product Name',
  'No. of units',
  'Dimensions(Length, thickness and all that bs)',
  'Estimate Budget'
];

bool fullScreen;

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    fullScreen = (MediaQuery.of(context).size.width >= kDesktopBreakpoint)
        ? true
        : false;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: WebNavbar(
        
          navColor: Colors.transparent,
          hamburgerColor: AppColors.LightRed,
          pathImage: "assets/images/CWF-logo.png",
          textNavbar: Text(''),
          myButtons: [
            navButton(
                onPressed: () => controller.changeIndex(0),
                textColor: Colors.white,
                buttonColor: Colors.transparent,
                name: 'HOME'),
            navButton(
                onPressed: () => controller.changeIndex(1),
                textColor: Colors.white,
                buttonColor: Colors.transparent,
                name: 'SERVICES'),
            navButton(
                onPressed: () => controller.changeIndex(2),
                textColor: Colors.white,
                buttonColor: Colors.transparent,
                name: 'PRODUCTS'),
            navButton(
                onPressed: () => controller.changeIndex(3),
                textColor: Colors.white,
                buttonColor: Colors.transparent,
                name: 'TEAM'),
            navButton(
                onPressed: () => controller.changeIndex(4),
                textColor: Colors.white,
                buttonColor: Colors.transparent,
                name: 'ABOUT US'),
            navButton(
                onPressed: () => controller.changeIndex(5),
                textColor: Colors.white,
                buttonColor: AppColors.LightRed,
                name: 'GET A QUOTE'),
          ],
        ),
        body: Obx(() {
          switch (controller.currentIndex.value) {
            case 0:
              return buildHomeController(context, fullScreen);

              break;
            case 1:
              return ServicesView();

              break;
            case 2:
              return ProductsView();

              break;
            case 3:
              return TeamView();

              break;
            case 4:
              return AboutusView();

              break;

            case 5:
              return GetaquoteView();
            default:
              return buildHomeController(context, fullScreen);
          }
        }));
  }
}
