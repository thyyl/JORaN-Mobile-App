import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/ServiceModel.dart';

class ServiceProvider extends ChangeNotifier {
  late List<Service> _serviceList;

  List<Service> get serviceList => _serviceList;

  Service getServiceIndividual(String id) {
    return _serviceList.firstWhere(
      (element) => element.serviceID == id
    );
  }

  void setServiceList(List<Service> serviceList) {
    _serviceList = serviceList;
    notifyListeners();
  }

  void setUpdateService(String serviceID, String update, int category) {
    switch (category) {
      case 1:
        _serviceList.firstWhere(
                (element) => element.serviceID == serviceID
        ).title = update;
        break;
      case 2:
        _serviceList.firstWhere(
                (element) => element.serviceID == serviceID
        ).category = update;
        break;
      case 3:
        _serviceList.firstWhere(
                (element) => element.serviceID == serviceID
        ).price = update;
        break;
    }

    notifyListeners();
  }

  void deleteService(String serviceID) {
    _serviceList.removeWhere(
      (element) => element.serviceID == serviceID
    );

    notifyListeners();
  }

  void addNewService(Service service) {
    _serviceList.add(service);

    notifyListeners();
  }
}