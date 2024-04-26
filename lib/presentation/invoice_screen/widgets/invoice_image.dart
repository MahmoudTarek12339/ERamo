import 'package:eramo/presentation/resources/assets_manager.dart';
import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class InvoiceImage extends StatelessWidget {
  const InvoiceImage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
        width: width * 0.72,
        height: height * 0.23,
        child: Image.asset(
          AssetsManager.invoice,
          fit: BoxFit.contain,
        ));
  }
}
