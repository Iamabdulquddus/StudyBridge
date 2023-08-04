
import 'package:get/get.dart';


class SidebarController extends GetxController {
  RxInt selectedMenuIndex = 0.obs  ; //dont set it to 0
  RxInt selectedSubmenuIndex = 0.obs  ; //dont set it to 0

  RxBool isExpanded = false.obs ;


  expandOrShrinkDrawer(int menu,int submenu,String route){
    print('route=> $route');
    selectedMenuIndex.value = menu ;
    selectedSubmenuIndex.value = submenu ;
    Get.toNamed(route);

    update();
  }

}