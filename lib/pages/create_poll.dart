import 'package:cc_yard_test/controller/createpollcontroller.dart';
import 'package:cc_yard_test/widgets/mytextfield.dart';
import 'package:cc_yard_test/widgets/polls.dart';
import 'package:cc_yard_test/widgets/textarea.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CreatePoll extends StatelessWidget {
  CreatePoll({super.key});
  final controller = Get.put(CreatePollController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Moderators Poll",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffF58600), Color(0xffC64216)])),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Create Poll",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            TextArea(
              headertext: "TOPIC",
              controller: controller.topicController,
            ),
            TextArea(
              headertext: "Statement",
              controller: controller.statementController,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).colorScheme.secondary,
                          Colors.white
                        ]),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  const Polls(),
                  MyTextField(
                    optionno: "option 1",
                    controller: controller.option1Controller,
                  ),
                  MyTextField(
                    optionno: "option 2",
                    controller: controller.option2Controller,
                  ),
                  MyTextField(
                    optionno: "option 3",
                    controller: controller.option3Controller,
                  ),
                  MyTextField(
                    optionno: "option 4",
                    controller: controller.option4Controller,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 80),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(14)),
                child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
