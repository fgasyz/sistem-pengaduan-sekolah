import 'package:get/get.dart';

class WidgetController extends GetxController {
  RxBool isActive = false.obs;
  RxBool isDrawer = true.obs;

  void onUpdateDropdown() {
    isActive.value = !isActive.value;
    update(['manajemen_anggota']);
  }

  void onUpdateDropdown2() {
    isActive.value = !isActive.value;
    update(['daftar_pengaduan']);
  }

  void onChangeDrawer() {
    isDrawer.value = !isDrawer.value;
    update();
  }
}
