import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PollDetail extends StatelessWidget {
  const PollDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return pollIndicate(context);
  }

  Widget pollIndicate(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                const LinearProgressIndicator(
                  backgroundColor: Color(0xff222222),
                  color: Color.fromARGB(255, 151, 98, 32),
                  minHeight: 70,
                  borderRadius: BorderRadius.all(Radius.circular(
                    15,
                  )),
                  value: 75 / 100,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
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
                      const Text(
                        "US Intel Aids Canada in Nijjar Case",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: LinearProgressIndicator(
                              backgroundColor:
                                  Color.fromARGB(255, 177, 111, 31),
                              value: 34 / 100,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "34%",
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
    );
  }
}
