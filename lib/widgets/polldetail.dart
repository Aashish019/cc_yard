import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PollDetails extends StatelessWidget {
  final String option;
  final String title;
  final String per;
  const PollDetails(
      {super.key,
      required this.option,
      required this.per,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: InkWell(
        onTap: () {
          Get.showSnackbar(
            GetSnackBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              title: title,
              message: 'Vote is registered',
              icon: const Icon(Icons.refresh),
              duration: const Duration(seconds: 1),
            ),
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  LinearProgressIndicator(
                    backgroundColor: const Color(0xff222222),
                    color: const Color.fromARGB(255, 151, 98, 32),
                    minHeight: 70,
                    borderRadius: const BorderRadius.all(Radius.circular(
                      15,
                    )),
                    value: int.parse(per) / 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 19),
                    decoration: BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Theme.of(context).colorScheme.secondary,
                                Theme.of(context).colorScheme.primary,
                              ]),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Text(
                          option,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                backgroundColor:
                                    const Color.fromARGB(255, 177, 111, 31),
                                value: int.parse(per) / 100,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "$per%",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
