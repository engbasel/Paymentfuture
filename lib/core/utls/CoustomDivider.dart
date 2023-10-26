import 'package:flutter/material.dart';

class CoustomDivider extends StatelessWidget {
  const CoustomDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0XFFC6C6C6),
          ),
        ),
      ),
    );
  }
}
