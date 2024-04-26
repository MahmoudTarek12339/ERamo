import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  final int currentStep;

  const StepperWidget(this.currentStep, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorManager.lightWhite,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 7.5,
            ),
            Icon(
              Icons.check_circle_outline,
              color: ColorManager.green,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Invoice Details',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                fontFamily: 'Poppins',
                color: ColorManager.green,
              ),
            ),
            const SizedBox(
              width: 19,
            ),
            Icon(
              Icons.arrow_right_alt_sharp,
              color: ColorManager.green,
            ),
            const SizedBox(
              width: 19,
            ),
            Icon(
              Icons.check_circle_outline,
              color: currentStep >= 2
                  ? ColorManager.green
                  : ColorManager.darkWhite,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Payment Type',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                fontFamily: 'Poppins',
                color: currentStep >= 2
                    ? ColorManager.green
                    : ColorManager.lightBlack,
              ),
            ),
            const SizedBox(
              width: 19,
            ),
            Icon(
              Icons.arrow_right_alt_sharp,
              color: currentStep >= 2
                  ? ColorManager.green
                  : ColorManager.veryDarkGrey,
            ),
            const SizedBox(
              width: 19,
            ),
            Icon(
              Icons.check_circle_outline,
              color: currentStep >= 3
                  ? ColorManager.green
                  : ColorManager.darkWhite,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Done',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                fontFamily: 'Poppins',
                color: currentStep >= 3
                    ? ColorManager.green
                    : ColorManager.lightBlack,
              ),
            ),
            const SizedBox(
              width: 7.5,
            ),
          ],
        ),
      ),
    );
  }
}
