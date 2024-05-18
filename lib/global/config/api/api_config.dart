/// A config class that defines API endpoints.
class ApiConfig {
  ApiConfig._();

  static const String versionInfoURL = '/api';
  static const String baseURL = 'https://tms.eco-fret.com';

  static const String baseVersionURL = '$baseURL$versionInfoURL';

  // Auth Endpoints
  static const String loginURL = '$baseVersionURL/login-driver';

  // Driver Endpoints
  static const String driverRidesURL = '$baseVersionURL/driver-rides';
}
