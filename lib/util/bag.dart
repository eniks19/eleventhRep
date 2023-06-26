import 'package:bag/model/model_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyBag extends StatelessWidget {
  MyBag({super.key, required this.fash, required this.press});
  Bag fash;
  void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // height: 200,
              decoration: BoxDecoration(
                color: fash.kalar,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12),
              //  margin: EdgeInsets.all(5),
              child: Image.network(fash.img, width: double.infinity),
            ),
            Text(fash.text),
            SizedBox(
              height: 4,
            ),
            Text('\$' + fash.price.toString()),
          ],
        ),
      ),
    );
  }
}
