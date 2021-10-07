class Service {
  String serviceID;
  String title;
  String category;
  String price;
  String userID;

  Service({
    required this.serviceID,
    required this.title,
    required this.category,
    required this.price,
    required this.userID,
  });

  factory Service.fromJson(Map<String, dynamic> responseData){
    return Service(
      serviceID: responseData['serviceID'],
      title: responseData['title'],
      category: responseData['category'],
      price: responseData['price'],
      userID: responseData['userID']
    );
  }
}