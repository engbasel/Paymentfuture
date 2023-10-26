// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/PaymentDetailsviwe/PayMentMethoListViwe.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/PaymentDetailsviwe/widgets/CoustomCredtCard.dart';
import 'package:svg_flutter/svg.dart';

import 'package:payapp/core/utls/style.dart';

class PaymentDetailsViwe extends StatefulWidget {
  const PaymentDetailsViwe({super.key});

  @override
  State<PaymentDetailsViwe> createState() => _PaymentDetailsViweState();
}

class _PaymentDetailsViweState extends State<PaymentDetailsViwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              'assets/image/arrow1.svg',
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'Payment Details',
            style: styleing.style25,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            PaymentMethodsListView(),
            CustomCreditCard()
          ],
        ),
      ),
    );
  }
}
