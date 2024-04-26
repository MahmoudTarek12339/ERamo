import 'package:eramo/presentation/invoice_screen/widgets/stepper_widget.dart';
import 'package:eramo/presentation/payment_screen/widgets/active_body_widget.dart';
import 'package:eramo/presentation/payment_screen/widgets/active_header_widget.dart';
import 'package:eramo/presentation/payment_screen/widgets/header_widget.dart';
import 'package:eramo/presentation/payment_screen/widgets/payment_image.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            children: [
              const PaymentImage(),
              const SizedBox(
                height: 102,
              ),
              const HeaderWidget(Icons.money, 'Cash payment'),
              const SizedBox(
                height: 16,
              ),
              const ActiveHeaderWidget(Icons.credit_card, 'Credit/ Debit Card'),
              const SizedBox(
                height: 16,
              ),
              const ActiveBodyWidget(),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 40),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    backgroundColor: ColorManager.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Add other card',
                    style: TextStyle(
                      color: ColorManager.darkBlue,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Jost',
                      fontSize: 16,
                    ),
                  )),
              const SizedBox(
                height: 16,
              ),
              const HeaderWidget(Icons.account_balance_wallet, 'Mobile wallet'),
              const SizedBox(
                height: 16,
              ),
              const StepperWidget(2),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 68.5,
                        ),
                        backgroundColor: ColorManager.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      )),
                  const SizedBox(
                    width: 9.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.doneRoute);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 54.5,
                        ),
                        backgroundColor: ColorManager.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
