import 'package:eramo/presentation/teachers_screen/controller/teachers_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TeachersProvider>(builder: (_, value, __) {
      return TextField(
          decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search your preferred teachers',
        hintStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'Poppins',
        ),
      ));
    });
  }
}
