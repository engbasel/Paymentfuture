import 'package:flutter/material.dart';

class Dashedline extends StatelessWidget {
  const Dashedline({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.sizeOf(context).height * .2 + 20,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Row(
            children: List.generate(
              30,
              (index) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Container(
                    width: 1,
                    height: 1,
                    color: const Color(0xFFB8B8B8),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
