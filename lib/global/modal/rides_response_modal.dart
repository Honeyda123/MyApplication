import 'package:firstproject/global/modal/rides_data_modal.dart';

class RidesResponse {
  final int success;
  final String message;
  final RidesData data;

  RidesResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory RidesResponse.fromJson(Map<String, dynamic> json) {
    return RidesResponse(
      success: json['success'] as int,
      message: json['message'] as String,
      data: RidesData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'data': data.toJson(),
    };
  }
}
