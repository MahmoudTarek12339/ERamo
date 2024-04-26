import 'package:eramo/presentation/teachers_screen/controller/teachers_provider.dart';
import 'package:eramo/presentation/teachers_screen/widgets/teachers_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeachersList extends StatelessWidget {
  const TeachersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<TeachersProvider>(
        builder: (_, value, __) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  mainAxisExtent: 220,
                  childAspectRatio: 180 / 220,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 12),
              shrinkWrap: true,
              itemCount: value.teachers.length,
              itemBuilder: (context, index) => TeachersListItem(index),
            ),
          );
        },
      ),
    );
  }
}
