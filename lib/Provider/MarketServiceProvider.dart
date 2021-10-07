import 'package:flutter/cupertino.dart';
import 'package:joran_app/Models/ServiceModel.dart';

class MarketServiceProvider extends ChangeNotifier {
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
}