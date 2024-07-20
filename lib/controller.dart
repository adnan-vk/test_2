import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  List favouritesTitle = [];
  List favouritesSub = [];
  var title = "hello";
  var sub = "hi";
  addToFav() {
    favouritesTitle.add(title);
    favouritesSub.add(sub);
    notifyListeners();
  }
}
