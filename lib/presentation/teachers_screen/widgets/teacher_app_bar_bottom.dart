import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class TeachersAppBarBottom extends StatelessWidget {
  const TeachersAppBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.blue,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(50)),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Very good..',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 32.0,
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            'Please choose your preferred teachers.',
            textAlign: TextAlign.center,
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
