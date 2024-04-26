import 'package:eramo/presentation/invoice_screen/widgets/invoice_expandable_widget.dart';
import 'package:eramo/presentation/invoice_screen/widgets/invoice_image.dart';
import 'package:eramo/presentation/invoice_screen/widgets/stepper_widget.dart';
import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:eramo/presentation/teachers_screen/controller/teachers_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/routes_manager.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Column(
            children: [
              const InvoiceImage(),
              const SizedBox(
                height: 6,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 56,
                decoration: BoxDecoration(
                    color: ColorManager.blue,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    'Invoices details',
                    style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      InvoiceExpandableWidget(index),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 12,
                  ),
                  itemCount:
                      context.read<TeachersProvider>().selectedTeachers.length,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Consumer<TeachersProvider>(builder: (_, value, __) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 56,
                  decoration: BoxDecoration(
                      color: ColorManager.blue,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Pay now (${value.prices} EGP)',
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                );
              }),
              const SizedBox(
                height: 11,
              ),
              const StepperWidget(1),
              const SizedBox(
                height: 24,
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
                        Navigator.pushNamed(context, Routes.checkoutRoute);
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
    );
  }
}
