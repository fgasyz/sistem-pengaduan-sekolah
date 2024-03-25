import 'package:get/get.dart';
import '../../../constants/route_path.dart';

class NavigationController extends GetxController {
  RxString currentPath = RoutePath.allComplaints.obs;

  void navigateTo(String newPath) {
    currentPath.value = newPath;
    update();
  }
}
