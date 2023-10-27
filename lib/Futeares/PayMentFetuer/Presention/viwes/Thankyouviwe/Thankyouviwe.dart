import 'package:flutter/material.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/Thankyouviwe/ThankyouviweBody.dart';

class Thankyouviwe extends StatelessWidget {
  const Thankyouviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: const Text('data'),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  )
                ],
              ),
              Transform.translate(
                  offset: const Offset(0, -60),
                  child: const ThankyouviweBody()),
            ],
          ),
        ),
      ),
    );
  }
}
