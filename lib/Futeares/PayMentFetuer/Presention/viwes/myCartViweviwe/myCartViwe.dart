// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/PaymentDetailsviwe/PayMentMethoListViwe.dart';
import 'package:payapp/core/utls/CoustomBottom.dart';
import 'package:svg_flutter/svg.dart';

import 'package:payapp/core/utls/CoustomDivider.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/myCartViweviwe/widgets/RowOrderInfo.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/myCartViweviwe/widgets/TotalPrice.dart';
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
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      context: context,
      builder: (context) {
        return const PaymentMethodsBottomSheet();
      },
    );
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return const PaymentDetailsViweBody();
    //     },
    //   ),
    // );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15),
        const PaymentMethodsListView(),
        const SizedBox(height: 15),
        CustomButton(
          ButtonTitle: 'Continue ',
          ontap: () {},
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
