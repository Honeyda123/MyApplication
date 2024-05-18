import 'package:firstproject/global/modal/rider_modal.dart';

class LoginResponse {
  final String status;
  final Rider? rider;
  final int? dCharge;
  final String? currency;
  final String responseCode;
  final String result;
  final String responseMsg;

  LoginResponse({
    required this.status,
    this.rider,
    this.dCharge,
    this.currency,
    required this.responseCode,
    required this.result,
    required this.responseMsg,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json['status'] as String,
      rider: json.containsKey('rider')
          ? Rider.fromJson(json['rider'] as Map<String, dynamic>)
          : null,
      dCharge: json.containsKey('d_charge') ? json['d_charge'] as int : null,
      currency:
          json.containsKey('currency') ? json['currency'] as String : null,
      responseCode: json['ResponseCode'] as String,
      result: json['Result'] as String,
      responseMsg: json['ResponseMsg'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'rider': rider?.toJson(),
      'd_charge': dCharge,
      'currency': currency,
      'ResponseCode': responseCode,
      'Result': result,
      'ResponseMsg': responseMsg,
    };
  }
}
