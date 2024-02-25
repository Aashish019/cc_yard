import 'package:get/get.dart';

class PollController extends GetxController {
  var selectedpoll = "".obs;
  onchange(var pollss) {
    selectedpoll.value = pollss;
  }
}
