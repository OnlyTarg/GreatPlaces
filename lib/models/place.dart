import 'dart:io';

import 'package:flutter/cupertino.dart';
class PlaceLocation{
  final double lalitude;
  final double longitude;
  final String adress;

  PlaceLocation(@required this.lalitude, @required this.longitude, this.adress);
}

class Place {
  String id;
  String title;
  PlaceLocation locatiobn;
  File image;

  Place(@required this.id, @required this.title, @required this.locatiobn,
      @required this.image);
}
