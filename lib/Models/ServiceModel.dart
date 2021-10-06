class Service {
  String serviceID;
  String title;
  String category;
  String price;

  Service({
    required this.serviceID,
    required this.title,
    required this.category,
    required this.price,
  });

  factory Service.fromJson(Map<String, dynamic> responseData){
    return Service(
      serviceID: responseData['serviceID'],
      title: responseData['title'],
      category: responseData['category'],
      price: responseData['price'],
    );
  }
}