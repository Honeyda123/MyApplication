class Rider {
  final int id;
  final String name;
  final String mobile;
  final String address;
  final String email;
  final String status;
  final String aStatus;
  final String apiToken;

  Rider({
    required this.id,
    required this.name,
    required this.mobile,
    required this.address,
    required this.email,
    required this.status,
    required this.aStatus,
    required this.apiToken,
  });

  factory Rider.fromJson(Map<String, dynamic> json) {
    return Rider(
      id: json['id'] as int,
      name: json['name'] as String,
      mobile: json['mobile'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      status: json['status'] as String,
      aStatus: json['a_status'] as String,
      apiToken: json['api_token'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'mobile': mobile,
      'address': address,
      'email': email,
      'status': status,
      'a_status': aStatus,
      'api_token': apiToken,
    };
  }
}
