import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class TextArea extends StatelessWidget {
  final String headertext;
  final TextEditingController? controller;
  const TextArea({
    super.key,
    required this.headertext,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  headertext,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
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
            child: TextField(
              minLines: 3,
              maxLines: 3,
              decoration: InputDecoration(
                fillColor: Theme.of(context).colorScheme.secondary,
                hintText: "write here..",
                filled: true,
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
