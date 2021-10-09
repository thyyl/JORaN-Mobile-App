import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/ApplicationModel.dart';
import 'package:joran_app/Models/NotificationModel.dart';

class NotificationProvider extends ChangeNotifier {
  late List<NotificationModel> _notificationList;
  late List<Application> _applicationList;

  List<NotificationModel> get notificationList => _notificationList;
  List<Application> get applicationList => _applicationList;

  NotificationModel getNotificationIndividual(String notificationID) {
    return _notificationList.firstWhere(
      (element) => element.notificationID == notificationID
    );
  }

  void setNotificationList(List<NotificationModel> notificationList) {
    _notificationList = notificationList;

    notifyListeners();
  }

  void setApplicationList(List<Application> applicationList) {
    _applicationList = applicationList;

    notifyListeners();
  }

  void addNotification(NotificationModel notification) {
    _notificationList.add(notification);

    notifyListeners();
  }
}