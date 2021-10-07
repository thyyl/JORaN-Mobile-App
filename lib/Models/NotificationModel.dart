class NotificationModel {
  String notificationID;
  String notificationType;
  String associateID;
  DateTime notificationDate;
  String notificationDetails;
  bool hasRated;

  NotificationModel({
    required this.notificationID,
    required this.notificationType,
    required this.associateID,
    required this.notificationDate,
    required this.notificationDetails,
    required this.hasRated,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> responseData){
    return NotificationModel(
      notificationID: responseData['notificationID'],
      notificationType: responseData['notificationType'],
      associateID: responseData['associateID'],
      notificationDate: responseData['notificationDate'],
      notificationDetails: responseData['notificationDetails'],
      hasRated: responseData['hsaRated'],
    );
  }
}