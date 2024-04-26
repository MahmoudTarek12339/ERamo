import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:eramo/presentation/teachers_screen/controller/teachers_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotSelectedButton extends StatelessWidget {
  final int index;
  const NotSelectedButton(this.index,{super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TeachersProvider>(builder: (_, value, __) {
      return ElevatedButton(
          onPressed: () {
            value.changeSelection(index);
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(140,36),
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 20,
            ),
            backgroundColor: ColorManager.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_month,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'Booked',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Jost',
                  fontSize: 14,
                ),
              ),
            ],
          ));
    });
  }
}
