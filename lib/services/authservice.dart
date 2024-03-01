import 'dart:convert';
import 'dart:io';

import 'package:cc_yard_test/constants/api.dart';
import 'package:cc_yard_test/model/usermodel.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final url = "${API().baseUrl}${API().otpurl}";
  final client = HttpClient();

  Future<UserModel?> login(String phoneNumber, String otp) async {
    final Map<String, dynamic> body = {'phone_number': phoneNumber, 'otp': otp};
    try {
      var response = await http.post(Uri.parse(url),
          headers: {'content-type': 'application/json'},
          body: jsonEncode(body));
      print(url);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        final UserModel user = UserModel.fromJson(result);
        // print(user.data!.access.toString());
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setString('token', user.token.toString());
        return user;
      } else {
        print("request failed:  ${response.statusCode}");
      }
    } catch (e) {
      print("error$e");
    }
    return null;
  }
}
