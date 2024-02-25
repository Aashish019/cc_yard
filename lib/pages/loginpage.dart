import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "enter the phone number";
                }
                return null;
              },
              decoration: const InputDecoration(hintText: "phone"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "enter the otp";
                }
                return null;
              },
              decoration: const InputDecoration(hintText: "otp"),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 48,
                width: 250,
                color: Colors.amber,
                child: const Center(child: Text("Login")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
