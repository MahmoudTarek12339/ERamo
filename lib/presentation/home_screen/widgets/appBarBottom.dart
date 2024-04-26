import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class AppBarBottom extends StatelessWidget {
  const AppBarBottom({super.key});

  final String userName = 'Mohamed Ragab';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.blue,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(50)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 24.0,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                userName,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24.0,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          const Text(
            'Please choose your subjects',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
