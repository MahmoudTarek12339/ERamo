import 'package:eramo/presentation/home_screen/controller/subject_provider.dart';
import 'package:eramo/presentation/home_screen/widgets/subjectListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../resources/color_manager.dart';

class SubjectsList extends StatelessWidget {
  const SubjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.7,
      width: width * 0.9,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: ColorManager.lightGrey,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            'Please select subjects',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorManager.darkBlue,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Consumer<SubjectProvider>(
            builder: (_, value, __) {
              return Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            mainAxisExtent: 150,
                            childAspectRatio: 170 / 178,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 12
                        ),
                    itemCount: value.subjects.length,
                    itemBuilder: (context, index) => SubjectItem(index),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
