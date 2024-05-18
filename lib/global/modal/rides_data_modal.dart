class RidesData {
  final List<dynamic> upcomingRides;
  final List<dynamic> completedRides;

  RidesData({
    required this.upcomingRides,
    required this.completedRides,
  });

  factory RidesData.fromJson(Map<String, dynamic> json) {
    return RidesData(
      upcomingRides: json['upcoming_rides'] as List<dynamic>,
      completedRides: json['completed_rides'] as List<dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'upcoming_rides': upcomingRides,
      'completed_rides': completedRides,
    };
  }
}
