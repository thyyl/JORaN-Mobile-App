import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/NotificationModel.dart';

class NotificationProvider extends ChangeNotifier {
  late List<NotificationModel> _notificationList;

  List<NotificationModel> get notificationList => _notificationList;

  NotificationModel getNotificationIndividual(String notificationID) {
    return _notificationList.firstWhere(
      (element) => element.notificationID == notificationID
    );
  }

  void setNotificationList(List<NotificationModel> notificationList) {
    _notificationList = notificationList;

    notifyListeners();
  }

  void addNotification(NotificationModel notification) {
    _notificationList.add(notification);

    notifyListeners();
  }
}