// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/PaymentDetails.dart';
import 'package:payapp/core/utls/CoustomBottom.dart';
import 'package:svg_flutter/svg.dart';

import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/widgets/CoustomDivider.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/widgets/RowOrderInfo.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/widgets/TotalPrice.dart';
import 'package:payapp/core/utls/style.dart';

class mycartviwe extends StatelessWidget {
  const mycartviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            'assets/image/arrow1.svg',
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'My Cart',
            style: styleing.style25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(child: Image.asset('assets/image/pasket_prodacts.png')),
              const SizedBox(height: 20),
              const RowOrderInfo(Order: 'Order Subtotal', vale: '42.97'),
              const SizedBox(height: 10),
              const RowOrderInfo(Order: 'Discount', vale: '0'),
              const SizedBox(height: 10),
              const RowOrderInfo(Order: 'Shipping', vale: '0'),
              const SizedBox(height: 10),
              const CoustomDivider(),
              const SizedBox(height: 10),
              TotalPrice(value: '150', Total: 'Total'),
              const SizedBox(height: 20),
              CustomButton(
                ButtonTitle: 'Complete Payment',
                ontap: () {
                  navigationMethod(context);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void navigationMethod(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const PaymentDetailsViwe();
        },
      ),
    );
  }
}