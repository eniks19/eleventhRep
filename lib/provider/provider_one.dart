import 'package:bag/model/model_one.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Thing extends ChangeNotifier {
  List<Items> blue = [
    Items(
      title: ' Bag',
      isLine: 'true',
    ),
  ];
  List<Items> oro = [
    Items(
      title: 'Hand ',
      isLine: 'false',
    ),
  ];
  List<Items> gree = [
    Items(
      title: 'Hand Bag',
      isLine: 'true',
    ),
  ];
  List<Items> red = [
    Items(
      title: 'Hand Bag',
      isLine: 'true',
    ),
  ];
  List<Items> brown = [
    Items(
      title: 'Hand Bag',
      isLine: 'true',
    ),
  ];
  List<Items> yell = [
    Items(
      title: 'Hand Bag',
      isLine: 'true',
    ),
  ];

  List<List<Items>> itemList() {
    return [
      blue,
      oro,
      gree,
      red,
      brown,
      yell,
    ];
  }

  //get category => _category;
}
