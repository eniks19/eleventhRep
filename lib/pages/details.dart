import 'package:bag/model/model_one.dart';
import 'package:bag/model/model_two.dart';
import 'package:bag/provider/provider_one.dart';
import 'package:bag/provider/provider_two.dart';
import 'package:bag/util/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<Thing, Cont>(
        builder: (context, value, value2, child) {
          return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                List<Items> kaitems = value.itemList()[index];
                Bag low = value2.getdets()[index];
                return MyCateg(cat: kaitems[index], owl: low);
              });
        },
      ),
    );
  }
}
