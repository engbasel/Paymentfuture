import 'package:flutter/material.dart';

class LeftPositionedCircle extends StatelessWidget {
  const LeftPositionedCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      bottom: MediaQuery.sizeOf(context).height * .2,
      child: const CircleAvatar(backgroundColor: Colors.white),
    );
  }
}

class RightPositionedCircle extends StatelessWidget {
  const RightPositionedCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: MediaQuery.sizeOf(context).height * .2,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
