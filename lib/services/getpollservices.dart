import 'package:cc_yard_test/constants/api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class GetPollsservices {
  final url = "${API().baseUrl}${API().allpoll}";

  Future allPolls() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.get('token');
    // print(token.toString);
    try {
      final response = await http.get(Uri.parse(url), headers: {
        'content-type': 'application/json',
        'Authorization': 'token $token'
      });
    } catch (e) {
      // print(e);
    }
  }
}
