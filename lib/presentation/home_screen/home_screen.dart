import 'package:eramo/presentation/home_screen/controller/subject_provider.dart';
import 'package:eramo/presentation/home_screen/widgets/appBarBottom.dart';
import 'package:eramo/presentation/home_screen/widgets/subjectList.dart';
import 'package:eramo/presentation/resources/color_manager.dart';
import 'package:eramo/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarBottom(),
              const SizedBox(
                height: 24,
              ),
              const SubjectsList(),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {
                    final selected = context.read<SubjectProvider>().selected;
                    if (selected == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please Select Subject!'),
                          backgroundColor: Colors.blue,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else {
                      Navigator.pushNamed(context, Routes.teachersRoute);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 69,
                    ),
                    backgroundColor: ColorManager.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Gilroy',
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
