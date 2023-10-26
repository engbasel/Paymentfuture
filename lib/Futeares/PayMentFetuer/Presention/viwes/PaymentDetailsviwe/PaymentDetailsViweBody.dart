// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/PaymentDetailsviwe/PayMentMethoListViwe.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/PaymentDetailsviwe/widgets/CoustomCredtCard.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/Thankyouviwe/Thankyouviwe.dart';
import 'package:payapp/core/utls/CoustomBottom.dart';
import 'package:svg_flutter/svg.dart';

import 'package:payapp/core/utls/style.dart';

class PaymentDetailsViweBody extends StatefulWidget {
  const PaymentDetailsViweBody({super.key});

  @override
  State<PaymentDetailsViweBody> createState() => _PaymentDetailsViweBodyState();
}

class _PaymentDetailsViweBodyState extends State<PaymentDetailsViweBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  final AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

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
      // const SizedBox(height: 20),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          const SliverToBoxAdapter(
            child: PaymentMethodsListView(),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              autovalidateMode: autoValidateMode,
              globalKey: formKey,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CustomButton(
                  ButtonTitle: 'Pay',
                  ontap: () {
                    validationMethodToForm();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validationMethodToForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    } else {
      AutovalidateMode.values;
      NavigationMethod();
      setState(() {});
    }
  }

  void NavigationMethod() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Thankyouviwe();
        },
      ),
    );
  }
}
