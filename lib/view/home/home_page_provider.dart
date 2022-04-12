import 'package:flutter/material.dart';
import 'package:machine_test/model/employs.dart' show Employs;

class HomePageProvider extends ChangeNotifier {
  var searchText = "";
  List<Employs> employs = [];
  List<Employs> searchList = [];

  setEmploys(List<Employs> employs) {
    this.employs = employs;
    searchList = employs;
    notifyListeners();
  }

  List<Employs> searchEmploys(String searchText) {
    searchList = [];
    if (searchText.isEmpty) {
      searchList = employs;
    } else {
      searchList = employs.where((Employs employ) {
        return (('${employ.firstName! } ${employ.lastName}')
                .toLowerCase()
                .contains(searchText.toLowerCase()) ||
            employ.mobile!
                .toString()
                .toLowerCase()
                .contains(searchText.toLowerCase()));
      }).toList();
    }
    notifyListeners();
    return searchList;
  }
}
