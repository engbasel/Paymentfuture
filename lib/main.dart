import 'package:flutter/material.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/myCartViweviwe/myCartViwe.dart';

void main(List<String> args) {
  runApp(const PayApp());
}

class PayApp extends StatelessWidget {
  const PayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
      routes: {},
    );
  }
}
