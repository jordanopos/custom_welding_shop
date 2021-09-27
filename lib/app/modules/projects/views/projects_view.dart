import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:custom_welding_shop/app/global/widgets/footer.dart';
import 'package:custom_welding_shop/app/modules/home/views/home_view.dart';
import 'package:custom_welding_shop/app/modules/projects/controllers/projects_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TeamView extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    fullScreen = (MediaQuery.of(context).size.width >= kDesktopBreakpoint)
        ? true
        : false;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: fullScreen
              ? const EdgeInsets.only(left: 45.0)
              : const EdgeInsets.only(left: 25),
          child: Text('Team', style: TextStyle(
        fontSize: 20, color: AppColors.Maroon, fontWeight: FontWeight.bold)),
        ),
        centerTitle: false,
      ),
      body: !fullScreen
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: buildtheimage('assets/images/Works  _-41.jpg',
                            context, "Kampala Katono")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: buildtheimage('assets/images/Works  _-44.jpg',
                            context, "Musa Katono")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: buildtheimage('assets/images/Works  _-46.jpg',
                            context, "Erasmus Sseyamba")),
                  ),
                  Footer()
                ]),
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 45),
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Row(
                      children: [
                        Expanded(
                            child: buildtheimage(
                                'assets/images/Works  _-41.jpg',
                                context,
                                "Mansa Kisavu")),
                        Expanded(
                            child: buildtheimage(
                                'assets/images/Works  _-44.jpg',
                                context,
                                "Musa Katono")),
                        Expanded(
                            child: buildtheimage(
                                'assets/images/Works  _-46.jpg',
                                context,
                                "Erasmus Sseyamba")),
                      ],
                    ),
                  ),
                  Footer()
                ],
              ),
            ),
    );
  }
}

Widget buildtheimage(String imagePath, BuildContext context, String name) {
  return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height - 10,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.black.withOpacity(0.2)),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('$name',
                  style: TextStyle(fontSize: 20, color: AppColors.Maroon)),
              Container(height: 40)
            ],
          )),
        ],
      ));
}
