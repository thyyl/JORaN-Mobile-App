class Application {
  String applicationID;
  String notificationID;
  String applicationCategory;
  DateTime dateTime;

  Application({
    required this.applicationID,
    required this.notificationID,
    required this.applicationCategory,
    required this.dateTime,
  });

  factory Application.fromJson(Map<String, dynamic> responseData){
    return Application(
      applicationID: responseData['applicationID'],
      notificationID: responseData['notificationID'],
      applicationCategory: responseData['applicationCategory'],
      dateTime: responseData['dateTime'],
    );
  }
}