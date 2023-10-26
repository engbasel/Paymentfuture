import 'package:flutter/material.dart';
import 'package:payapp/core/utls/style.dart';

class Paymentltemlnfo extends StatelessWidget {
  String Data;
  String Value;
  Paymentltemlnfo({
    Key? key,
    required this.Data,
    required this.Value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        children: [
          Text(Data, style: styleing.style18),
          const Spacer(),
          Text(Value, style: styleing.style18W600),
        ],
      ),
    );
  }
}
