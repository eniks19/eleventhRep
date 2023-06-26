import 'package:bag/pages/home.dart';
import 'package:bag/provider/provider_one.dart';
import 'package:bag/provider/provider_two.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Thing()),
        ChangeNotifierProvider(create: (context) => Cont()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome(),
      ),
    );
  }
}
