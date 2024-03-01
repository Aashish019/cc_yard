import 'package:cc_yard_test/controller/pollcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Polls extends StatelessWidget {
  const Polls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyRadio(
            htext: "MCQ",
          ),
          MyRadio(
            htext: "Picture",
          ),
          MyRadio(
            htext: "Rate It",
          ),
        ],
      ),
    );
  }
}

class MyRadio extends StatelessWidget {
  final String htext;

  MyRadio({
    super.key,
    required this.htext,
  });
  final controller = Get.put((PollController()));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.only(top: 15),
        width: 90,
        decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary
                  ]),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Text(
              htext,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text("Poll"),
            Obx(() => Radio(
                  activeColor: Theme.of(context).colorScheme.primary,
                  value: htext,
                  groupValue: controller.selectedpoll.value,
                  onChanged: (value) {
                    controller.onchange(value);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
