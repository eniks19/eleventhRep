import 'package:bag/model/model_one.dart';
import 'package:bag/model/model_two.dart';
import 'package:flutter/material.dart';

class Cont extends ChangeNotifier {
  List<Bag> _bag = [
    Bag(
        img:
            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true',
        kalar: Colors.blue,
        text: 'Office Code',
        price: 234),
    Bag(
        img:
            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true',
        kalar: Colors.blue,
        text: 'Office Code',
        price: 234),
    Bag(
        img:
            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true',
        kalar: Colors.blue,
        text: 'Office Code',
        price: 234),
    Bag(
        img:
            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true',
        kalar: Colors.blue,
        text: 'Office Code',
        price: 234),
    Bag(
        img:
            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true',
        kalar: Colors.blue,
        text: 'Office Code',
        price: 234),
    Bag(
        img:
            'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true',
        kalar: Colors.blue,
        text: 'Office Code',
        price: 234),
  ];

  get bag => _bag;

  List<Bag> dets = [];

  List<Bag> getdets() {
    return dets;
  }

  void addets(Bag fash) {
    dets.add(fash);
    notifyListeners();
  }

  // List<Items> itemsList() {}
}
