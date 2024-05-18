import 'package:firstproject/global/config/api/api_config.dart';
import 'package:firstproject/global/config/api/request.dart';
import 'package:firstproject/global/modal/login_response_modal.dart';
import 'package:firstproject/global/modal/rides_response_modal.dart';

class HttpService {
  // Authenticate User: Http Request
  Future<List<LoginResponse>> authenticateUser(
      {required String mobile, required String password}) async {
    var map = <String, dynamic>{};
    map['mobile'] = mobile;
    map['password'] = password;

    final response = await HttpRequest.httpAuthenticateRequest(
      requestURL: ApiConfig.loginURL,
      requestMapBody: map,
    );

    if (response == false) {
      return [];
    } else if (response is List) {
      // If the response is already a List, we directly convert it to LoginResponse.
      return List.from(response)
          .map<LoginResponse>((json) => LoginResponse.fromJson(json))
          .toList();
    } else if (response is Map<String, dynamic>) {
      // If the response is a single object, we wrap it in a List and convert to LoginResponse.
      return [LoginResponse.fromJson(response)];
    } else {
      // With other cases, we return an empty list.
      return response
          .map<LoginResponse>((json) => LoginResponse.fromJson(json))
          .toList();
    }
  }

  // Fetch Driver Rides: Http Request
  Future<List<RidesResponse>> fetchDriverRoutes(
      {required int driverID, required String apiToken}) async {
    final response = await HttpRequest.httpPostRequest(
      requestURL: ApiConfig.driverRidesURL,
      requestBody: {"driver_id": driverID, "api_token": apiToken},
    );

    if (response is List) {
      // If the response is already a List, we directly convert it to RidesResponse.
      return List.from(response)
          .map<RidesResponse>((json) => RidesResponse.fromJson(json))
          .toList();
    } else if (response is Map<String, dynamic>) {
      // If the response is a single object, we wrap it in a List and convert to RidesResponse.
      return [RidesResponse.fromJson(response)];
    } else {
      // With other cases, we return an empty list.
      return [];
    }
  }
}
