class AppEndpoint {
  AppEndpoint._();
  // static const String baseUrl = "https://10.0.2.2:7026/api/"; //local
  static const String baseUrl =
      "https://esmpfree-001-site1.etempurl.com/api/"; //hosting

  static const String refeshToken = "user/refeshtoken";

  static const String logout = "user/logout";

  static const String checkUser = "user/check_user";

  static const String contentType = "application/json; charset=UTF-8";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;
}
