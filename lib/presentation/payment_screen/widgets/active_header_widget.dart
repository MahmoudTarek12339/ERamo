import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class ActiveHeaderWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const ActiveHeaderWidget(this.icon, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorManager.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
          ),
          Text(
            title,
            style: TextStyle(
              color: ColorManager.darkBlue,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Jost',
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
