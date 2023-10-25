// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:payapp/core/utls/style.dart';

class CustomButton extends StatelessWidget {
  String ButtonTitle;

  CustomButton({
    Key? key,
    required this.ontap,
    required this.ButtonTitle,
  }) : super(key: key);

  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 350,
        height: 73,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff34a853)),
        child: Center(
          child: Text(
            ButtonTitle,
            style: styleing.style22,
          ),
        ),
      ),
    );
  }
}
