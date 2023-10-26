import 'package:flutter/material.dart';

import 'package:payapp/core/utls/style.dart';

class RowOrderInfo extends StatelessWidget {
  const RowOrderInfo({
    required this.Order,
    required this.vale,
    Key? key,
  }) : super(key: key);

  final String Order, vale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Order,
          style: styleing.style18,
        ),
        const Spacer(),
        Text(vale, style: styleing.style18)
      ],
    );
  }
}
