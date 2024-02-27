// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Show_Case_Message.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:omrsheet_app/widgets/custom_question_container.dart';

class SelectNumbrOfQuestions extends StatefulWidget {
  const SelectNumbrOfQuestions({super.key});

  @override
  State<SelectNumbrOfQuestions> createState() => _SelectNumbrOfQuestionsState();
}

class _SelectNumbrOfQuestionsState extends State<SelectNumbrOfQuestions> {
  List<String> QuestionCounts = ['20', '100', '150', '200'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              30.h,
              CustomText(
                  fontWeight: FontWeight.w400,
                  text: 'Select number of question',
                  color: globalColors.BlackColor,
                  fontsize: 20),
              20.h,
              Column(
                children: QuestionCounts.map(
                  (text) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: custom_question_container(
                      text: '$text Questions',
                    ),
                  ),
                ).toList(),
              ),
              Spacer(),
              SizedBox(
                height: 56,
                child: custom_button(
                  textColor: globalColors.WhiteColor,
                  backgroundColor: globalColors.primaryColor,
                  title: 'Proceed',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowCaseMessage(),
                        ));
                  },
                ),
              ),
              30.h,
            ],
          ),
        ),
      ),
    );
  }
}
