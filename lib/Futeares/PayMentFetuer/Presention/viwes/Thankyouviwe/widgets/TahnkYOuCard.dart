import 'package:flutter/material.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/Thankyouviwe/widgets/paymentInfo.dart';
import 'package:payapp/Futeares/PayMentFetuer/Presention/viwes/myCartViweviwe/widgets/TotalPrice.dart';
import 'package:payapp/core/utls/CoustomDivider.dart';
import 'package:payapp/core/utls/style.dart';
import 'package:svg_flutter/svg.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 20, left: 30, right: 30),
      child: Container(
        width: double.infinity,
        decoration: ShapeDecoration(
          color: const Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Thank you!", style: Styles.style25),
              Text("Your transaction was successful",
                  style: Styles.style20W400),
              Paymentltemlnfo(Data: 'Date', Value: '01/24/2023'),
              Paymentltemlnfo(Data: 'Time', Value: '10:15 AM'),
              Paymentltemlnfo(Data: 'To', Value: 'Sam Louis'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CoustomDivider(),
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TotalPrice(Total: 'Total', value: '100'),
              ),
              const SizedBox(height: 50),
              Container(
                  width: 250,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      SvgPicture.asset('assets/image/VisaIcon.svg'),
                      const SizedBox(width: 20),
                      const Text('Credit Card Mastercard **78 '),
                    ],
                  )),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/image/QRcode.svg', width: 100),
                      const Spacer(),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 2,
                            color: Colors
                                .green, // Change to your desired border color
                          ),
                        ),
                        child: const Center(
                          child: Text('PAID'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
