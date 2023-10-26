import 'package:flutter/material.dart';

class TrueIcon extends StatelessWidget {
  const TrueIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 20,
      left: 0,
      right: 0,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFD9D9D9),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check,
            size: 50,
          ),
        ),
      ),
    );
  }
}
