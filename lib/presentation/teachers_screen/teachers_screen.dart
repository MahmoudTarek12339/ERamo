import 'package:eramo/presentation/teachers_screen/controller/teachers_provider.dart';
import 'package:eramo/presentation/teachers_screen/widgets/search_widgets.dart';
import 'package:eramo/presentation/teachers_screen/widgets/teacher_app_bar_bottom.dart';
import 'package:eramo/presentation/teachers_screen/widgets/teachers_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class TeachersScreen extends StatelessWidget {
  const TeachersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.blue,
          leading: null,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TeachersAppBarBottom(),
              const SizedBox(
                height: 24,
              ),
              const SearchWidget(),
              const SizedBox(
                height: 24,
              ),
              const TeachersList(),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 68.5,
                        ),
                        backgroundColor: ColorManager.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      )),
                  const SizedBox(
                    width: 9.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        final selected = context
                            .read<TeachersProvider>()
                            .selectedTeachers
                            .length;
                        if (selected == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please Select one Teacher!'),
                              backgroundColor: Colors.blue,
                              duration: Duration(seconds: 2),
                            ),
                          );
                        } else {
                          Navigator.pushNamed(context, Routes.invoiceRoute);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 54.5,
                        ),
                        backgroundColor: ColorManager.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
