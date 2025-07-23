import 'package:shared_preferences/shared_preferences.dart';
import 'package:tys_user_attendance/app/data/network/base_api_services.dart';
import 'package:tys_user_attendance/app/data/network/network_service_api.dart';
import 'package:tys_user_attendance/app/data/pojo/login_pojo.dart';

class AuthRepo {
  final BaseApiService _apiService = NetworkServiceApi();

  Future<LoginPojo> loginUser({
    required String email,
    required String password,
  }) async {
    final response = await _apiService.postApi(
      'https://banarasicraft.com/api/v1/login',
      {
        'email': email,
        'password': password,
      },
    );


    final loginPojo = LoginPojo.fromJson(response);
    // Store token and user details in SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', loginPojo.data?.token ?? '');
    prefs.setString('name', loginPojo.data?.name ?? '');
    return loginPojo;
  }
  Future<void> logOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Future<void> getUserToken () async {
    final prefs = await SharedPreferences.getInstance();
     prefs.getString('token');
  }
  Future<String?> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }
}
