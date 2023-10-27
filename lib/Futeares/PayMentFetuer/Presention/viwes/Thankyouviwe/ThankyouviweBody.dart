// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/Thankyouviwe/widgets/Circils.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/Thankyouviwe/widgets/TahnkYOuCard.dart';
import 'package:payapp/core/utls/Dashedline.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/Thankyouviwe/widgets/TrueICon.dart';

class ThankyouviweBody extends StatelessWidget {
  const ThankyouviweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 6),
      child: Stack(
        children: [
          ThankYouCard(),
          LeftPositionedCircle(),
          TrueIcon(),
          RightPositionedCircle(),
          Dashedline(),
        ],
      ),
    ); // RoundedRetang1eBorder
// ShapeDecoration
// Container
  }
}
