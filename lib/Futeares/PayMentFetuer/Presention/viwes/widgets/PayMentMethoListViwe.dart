import 'package:flutter/material.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/widgets/payment_method_Item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({Key? key}) : super(key: key);

  @override
  _PaymentMethodsListViewState createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodItemName = [
    'assets/image/paypal.svg',
    'assets/image/masterCard.svg',
    'assets/image/appelpay.svg',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItemName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: PaymentMethodItem(
                imagename: paymentMethodItemName[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
