import 'package:eramo/models/teacherModel.dart';
import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:eramo/presentation/teachers_screen/controller/teachers_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoiceExpandableWidget extends StatelessWidget {
  final int index;

  const InvoiceExpandableWidget(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TeachersProvider>(builder: (_, value, __) {
      final Teacher teacher = value.teachers[value.selectedTeachers[index]];
      return Container(
          width: MediaQuery.of(context).size.width * 0.85,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: ColorManager.lightGrey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ExpansionTile(
            title: Text(
              'Invoice (${index + 1}) details',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'DM Sans',
                color: ColorManager.veryDarkGrey,
              ),
            ),
            leading: null,
            initiallyExpanded: true,
            backgroundColor: ColorManager.lightGrey,
            iconColor: ColorManager.veryDarkGrey,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Invoice number',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                  Text(
                    '12500045125',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                  Text(
                    '${teacher.price} EGP',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Student name',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                  Text(
                    'Mohamed Ali',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Year',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                  Text(
                    'Fall 2023-2024',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment date',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                  Text(
                    '01/10/2023 - 08:45 AM',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Teacher name',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                  Text(
                    teacher.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Teacher subject',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                  Text(
                    teacher.subject,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      color: ColorManager.veryDarkGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
            ],
          ));
    });
  }
}
