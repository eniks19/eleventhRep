import 'package:bag/model/model_one.dart';
import 'package:bag/model/model_two.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCateg extends StatelessWidget {
  Items cat;
  Bag owl;
  MyCateg({super.key, required this.cat, required this.owl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(cat.title),
        ),
        Text(cat.isLine),
        Text(owl.text),
      ],
    );
  }
}
