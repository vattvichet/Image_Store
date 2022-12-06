import 'package:ecommerce/pages/home/ui/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../ui/account_ui.dart';

class BottomNavigatorController extends GetxController {
  RxInt index = 0.obs;
  var views = [
    HomePage(),
    Container(),
    const AccountView(),
  ];
  void changeIndex(int i) => index.value = i;
}
