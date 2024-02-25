import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MyTextField extends StatelessWidget {
  final String optionno;
  final TextEditingController? controller;
  const MyTextField(
      {super.key, required this.optionno, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary
                  ]),
              // width: 1,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: const InkWell(child: Icon(Icons.close)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            hintText: optionno,
          ),
        ),
      ),
    );
  }
}
