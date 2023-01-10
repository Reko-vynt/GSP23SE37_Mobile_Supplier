class AppEndpoint {
  AppEndpoint._();
  static const String baseUrl = "https://10.0.2.2:7026/api/"; //local

  static const String refeshToken = "user/refeshtoken";

  static const String contentType = "application/json";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;
}
