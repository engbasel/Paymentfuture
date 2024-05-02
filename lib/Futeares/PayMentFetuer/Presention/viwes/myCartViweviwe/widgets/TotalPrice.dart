import 'package:flutter/material.dart';
import 'package:payapp/core/utls/style.dart';

class TotalPrice extends StatelessWidget {
  String Total, value;

  TotalPrice({Key? key, required this.value, required this.Total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Total,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(value, style: Styles.style24)
      ],
    );
  }
}
