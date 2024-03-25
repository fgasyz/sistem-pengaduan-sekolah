import 'package:get/get.dart';

class WidgetController extends GetxController {
  RxBool isActive = false.obs;
  RxBool isDrawer = true.obs;

  void onUpdateDropdown() {
    isActive.value = !isActive.value;
  }

  void onChangeDrawer() {
    isDrawer.value = !isDrawer.value;
  }
}
