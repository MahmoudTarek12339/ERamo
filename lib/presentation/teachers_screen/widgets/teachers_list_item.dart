import 'package:badges/badges.dart' as badges;
import 'package:eramo/presentation/teachers_screen/widgets/not_selected_button.dart';
import 'package:eramo/presentation/teachers_screen/widgets/selected_button.dart';
import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:eramo/presentation/teachers_screen/controller/teachers_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeachersListItem extends StatelessWidget {
  final int index;

  const TeachersListItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TeachersProvider>(builder: (_, value, __) {
      return badges.Badge(
        position: badges.BadgePosition.topEnd(top: -15, end: 25),
        badgeAnimation: const badges.BadgeAnimation.fade(toAnimate: false),
        showBadge: value.teachers[index].isSelected,
        badgeStyle: badges.BadgeStyle(
          badgeColor: ColorManager.green,
          borderRadius: BorderRadius.circular(20),
          padding: const EdgeInsets.all(10)
        ),

        badgeContent: Text(
          value.teachers[index].selectionNumber.toString(),
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        child: Container(
          height: 220,
          width: 175,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: ColorManager.veryLightGrey,
            borderRadius: BorderRadius.circular(12),
            border: value.teachers[index].isSelected
                ? Border.all(color: ColorManager.green, width: 2.0)
                : null,
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  value.teachers[index].image,
                ),
                radius: 32.0,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                value.teachers[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: ColorManager.darkBlue,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                '${value.teachers[index].price} EGP',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: ColorManager.green,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                value.teachers[index].subject,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: ColorManager.veryDarkGrey,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              //to switch between selected and not selected buttons
              value.teachers[index].isSelected
                  ? SelectedButton(index)
                  : NotSelectedButton(index),
            ],
          ),
        ),
      );
    });
  }
}
