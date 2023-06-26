import 'package:bag/model/model_one.dart';
import 'package:bag/model/model_two.dart';
import 'package:bag/pages/details.dart';
import 'package:bag/provider/provider_one.dart';
import 'package:bag/provider/provider_two.dart';
import 'package:bag/util/bag.dart';
import 'package:bag/util/categories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  void actDet(Bag fash) {
    Provider.of<Cont>(context, listen: false).addets(fash);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyDetail()));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cont>(
      builder: (context, value2, child) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //text
                Text(
                  'Women',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // categories,
                // Expanded(
                //   child: ListView.builder(
                //       //  physics: FixedExtentScrollPhysics(),
                //       shrinkWrap: true,
                //       itemCount: 4,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (context, index) {
                //         Items myitems = value.category[index];
                //         return MyCateg(cat: myitems);
                //       }),
                // ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hand Bag'),
                      Text('Jewellery'),
                      Text('Footwear'),
                      Text('Dresses'),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: value2.bag.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          //mainAxisSpacing: 30,
                          childAspectRatio: 1 * 0.75),
                      itemBuilder: (context, index) {
                        Bag mybag = value2.bag[index];
                        return MyBag(
                          fash: mybag,
                          press: () => actDet(mybag),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
