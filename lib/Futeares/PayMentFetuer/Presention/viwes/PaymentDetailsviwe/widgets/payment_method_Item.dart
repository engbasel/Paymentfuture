// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  String imagename;
  bool isActive;

  PaymentMethodItem({
    Key? key,
    required this.imagename,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        // backgroundColor: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 1.50,
          color: isActive ? const Color(0xFF34A853) : Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            color: isActive ? const Color(0xFF34A853) : Colors.grey,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
          child: SvgPicture.asset(
        imagename,
        // height: 25,
      )),
    );
  }
}
