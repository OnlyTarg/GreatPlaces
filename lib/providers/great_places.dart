import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'package:grate_places/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(
    String title,
    File pickedImage,
  ) {
    final newPlace = Place(DateTime.now().toString(), title, null, pickedImage);
    _items.add(newPlace);
    notifyListeners();


  }
}
