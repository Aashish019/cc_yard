import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/navigationcontroller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.pages[controller.selectedIndex.value]),
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 60,
            elevation: 0,
            indicatorShape: const Border.fromBorderSide(
                BorderSide(style: BorderStyle.none)),
            indicatorColor: const Color.fromARGB(73, 211, 205, 205),
            backgroundColor: Theme.of(context).colorScheme.background,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (int index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  icon: Icon(
                    Icons.add,
                    color: Colors.grey,
                    size: 30,
                  ),
                  label: ""),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.poll,
                    color: Colors.white,
                    size: 30,
                  ),
                  icon: Icon(
                    Icons.poll,
                    color: Colors.grey,
                    size: 30,
                  ),
                  label: ""),
            ],
          ),
        ));
  }
}
