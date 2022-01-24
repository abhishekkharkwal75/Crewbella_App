import 'dart:convert';

import 'package:crewbella_app/string.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Controller extends ChangeNotifier {
  bool isloading = false;
  Map basic;
  fetchData() async {
    this.isloading = true;
    notifyListeners();
    try {
      var response = await get(pathUrl);
      var data = jsonDecode(response.body);
      //return data;
      basic = data["basic"];
      print(basic);
      this.isloading = false;
      notifyListeners();
    } catch (e) {
      print(e);
      this.isloading = false;
      notifyListeners();
    }
  }
}
