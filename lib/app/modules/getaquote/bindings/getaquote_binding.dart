import 'package:get/get.dart';

import '../controllers/getaquote_controller.dart';

class GetaquoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetaquoteController>(
      () => GetaquoteController(),
    );
  }
}
