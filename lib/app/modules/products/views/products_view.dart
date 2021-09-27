import 'package:custom_welding_shop/app/global/helpers/colors.dart';
import 'package:custom_welding_shop/app/global/widgets/footer.dart';
import 'package:custom_welding_shop/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/products_controller.dart';

List<String> productsImages = [
  'assets/images/Works  _-26.jpg',
  'assets/images/Works  _-28.jpg',
  'assets/images/Works  _-29.jpg',
  'assets/images/Works  _-32.jpg',
  'assets/images/Works  _-33.jpg',
  'assets/images/Works  _-35.jpg',
  'assets/images/Works  _-36.jpg',
  'assets/images/Works  _-32.jpg',
];

class ProductsView extends GetView<ProductsController> {
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
              ? const EdgeInsets.only(left: 45.0)
              : const EdgeInsets.only(left: 20),
          child: Text('Products',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.Maroon,
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: false,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: fullScreen
                    ? const EdgeInsets.only(left: 45)
                    : const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: fullScreen ? 4 : 2),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(productsImages[index],
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                                    height: 30,
                                    child: Text('Our products',
                                        style:
                                            TextStyle(color: AppColors.Maroon)))
                                .paddingOnly(left: 10)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
