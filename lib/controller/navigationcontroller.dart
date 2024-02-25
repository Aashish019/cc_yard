import 'package:cc_yard_test/pages/allpools.dart';
import 'package:cc_yard_test/pages/create_poll.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final List pages = [
    CreatePoll(),
    const AllPoles(),
  ];
}
