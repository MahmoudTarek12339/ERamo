import 'package:eramo/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class DoneImage extends StatelessWidget {
  const DoneImage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.2,
      width: width * 0.89,
      child: const Image(
        image: AssetImage(AssetsManager.done),
        fit: BoxFit.contain,
      ),
    );
  }
}
