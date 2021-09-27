import 'package:get/get.dart';

import 'package:custom_welding_shop/app/modules/aboutus/bindings/aboutus_binding.dart';
import 'package:custom_welding_shop/app/modules/aboutus/views/aboutus_view.dart';
import 'package:custom_welding_shop/app/modules/getaquote/bindings/getaquote_binding.dart';
import 'package:custom_welding_shop/app/modules/getaquote/views/getaquote_view.dart';
import 'package:custom_welding_shop/app/modules/home/bindings/home_binding.dart';
import 'package:custom_welding_shop/app/modules/home/views/home_view.dart';
import 'package:custom_welding_shop/app/modules/products/bindings/products_binding.dart';
import 'package:custom_welding_shop/app/modules/products/views/products_view.dart';
import 'package:custom_welding_shop/app/modules/projects/bindings/projects_binding.dart';
import 'package:custom_welding_shop/app/modules/projects/views/projects_view.dart';
import 'package:custom_welding_shop/app/modules/services/bindings/services_binding.dart';
import 'package:custom_welding_shop/app/modules/services/views/services_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SERVICES,
      page: () => ServicesView(),
      binding: ServicesBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => ProductsView(),
      binding: ProductsBinding(),
    ),
    GetPage(
      name: _Paths.PROJECTS,
      page: () => TeamView(),
      binding: ProjectsBinding(),
    ),
    GetPage(
      name: _Paths.ABOUTUS,
      page: () => AboutusView(),
      binding: AboutusBinding(),
    ),
    GetPage(
      name: _Paths.GETAQUOTE,
      page: () => GetaquoteView(),
      binding: GetaquoteBinding(),
    ),
  ];
}
