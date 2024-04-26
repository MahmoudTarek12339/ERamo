import 'package:eramo/presentation/done_screen/widgets/done_image.dart';
import 'package:eramo/presentation/invoice_screen/widgets/stepper_widget.dart';
import 'package:eramo/presentation/resources/assets_manager.dart';
import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:eramo/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              const DoneImage(),
              const SizedBox(
                height: 16,
              ),
              SvgPicture.asset(
                AssetsManager.check,
                width: 91,
                height: 85,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'THANK YOU!\nYour reservation is being confirmed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.green,
                  fontFamily: 'Jost',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.mainRoute);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 37,
                      vertical: 15,
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: ColorManager.blue,
                      ),
                    ),
                  ),
                  child: Text(
                    'Browse Home',
                    style: TextStyle(
                      color: ColorManager.blue,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Jost',
                      fontSize: 18,
                    ),
                  )),
              const SizedBox(
                height: 70,
              ),
              const StepperWidget(3),
            ],
          ),
        ),
      ),
    ));
  }
}
