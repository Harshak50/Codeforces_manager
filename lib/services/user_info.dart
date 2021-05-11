import 'package:coding_updates/Models/user_model.dart';
import 'api_client.dart';
class UserService{
  static Future<User> getUser() async {
    try {
      var client = await httpClient();
      var response =  await client.get("https://codeforces.com/api/user.info?handles=Raghu_Ram_Dhigajarla");
      return User.fromJson(response.data);
    } catch (e) {
      return User(status: "Not ok",result: []);
    }
  }

}