import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/subject_provider.dart';

class SubjectItem extends StatelessWidget {
  final int index;

  const SubjectItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SubjectProvider>(builder: (_, value, __) {
      return InkWell(
        onTap: () {
          value.changeSelection(index);
        },
        child: Stack(
          children: [
            Container(
              height: 170,
              width: 178,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorManager.darkGrey),
              ),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(value.subjects[index].image),
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    value.subjects[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
            ),
            //is Subject Selected
            if (value.subjects[index].isSelected)
              Container(
                height: 170,
                width: 178,
                decoration: BoxDecoration(
                    color: ColorManager.green.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorManager.green)),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 64,
                ),
              ),
          ],
        ),
      );
    });
  }
}
