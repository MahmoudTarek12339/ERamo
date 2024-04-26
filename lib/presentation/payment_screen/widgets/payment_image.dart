import 'package:eramo/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class PaymentImage extends StatelessWidget {
  const PaymentImage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.2,
      width: width * 0.85,
      child: const Image(
        image: AssetImage(AssetsManager.visa),
        fit: BoxFit.contain,
      ),
    );
  }
}
