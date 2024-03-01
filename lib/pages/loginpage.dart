import 'package:cc_yard_test/pages/homepage.dart';
import 'package:cc_yard_test/services/authservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  @override
  void dispose() {
    phoneNumberController.dispose();
    otpController.dispose();
    super.dispose();
  }

  // void login(BuildContext context) async {
  //   final AuthService authService = AuthService();

  //   final user =
  //       await authService.login(phoneNumberController.text, otpController.text);
  //   // print(user?.token.toString());
  //   if (user != null) {
  //     // Get.to(() => HomePage());
  //   }
  // }

  final _loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _loginkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: phoneNumberController,
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
                controller: otpController,
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
                onTap: () async {
                  if (_loginkey.currentState!.validate()) {
                    AuthService authService = AuthService();
                    final user = await authService.login(
                        phoneNumberController.text, otpController.text);
                    print(otpController.text);

                    // if (user != null) {
                    Get.to(() => HomePage());
                    // }
                  }
                },
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
      ),
    );
  }
}
