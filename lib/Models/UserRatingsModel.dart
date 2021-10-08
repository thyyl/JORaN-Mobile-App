class UserRatings {
  double successRate;
  int servicesOffered;
  double ratings;

  UserRatings({
    required this.successRate,
    required this.ratings,
    required this.servicesOffered,
  });

  factory UserRatings.fromJson(Map<String, dynamic> responseData){
    return UserRatings(
        successRate: responseData['successRate'],
        ratings: responseData['ratings'],
        servicesOffered: responseData['servicesOffered'],
    );
  }
}