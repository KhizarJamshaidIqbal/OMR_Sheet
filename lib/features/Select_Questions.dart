// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Select_Number_of_Questions.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';

class SelectQuestions extends StatelessWidget {
  const SelectQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 56,
                child: custom_button(
                  backgroundColor: globalColors.primaryColor,
                  title: 'OMR Sheet Practice',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectNumbrOfQuestions(),
                        ));
                  },
                ),
              ),
              10.h,
              SizedBox(
                height: 56,
                child: custom_button(
                  textColor: globalColors.primaryColor,
                  backgroundColor: globalColors.WhiteColor,
                  title: 'View Result',
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
