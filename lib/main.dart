import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/global/helpers/colors.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Custom Way Fabrications",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
            splashColor: Colors.transparent,
            appBarTheme: AppBarTheme(backgroundColor: AppColors.RedColor),
            fontFamily: 'MainFont',
            scaffoldBackgroundColor: AppColors.Maroon)),
  );
}
