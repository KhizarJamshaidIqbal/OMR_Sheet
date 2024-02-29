// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Show_Case_Message.dart';
import 'package:omrsheet_app/widgets/CustomAppBar.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:omrsheet_app/widgets/custom_question_container.dart';
import 'package:svg_flutter/svg.dart';

class SelectNumbrOfQuestions extends StatefulWidget {
  const SelectNumbrOfQuestions({super.key});

  @override
  State<SelectNumbrOfQuestions> createState() => _SelectNumbrOfQuestionsState();
}

class _SelectNumbrOfQuestionsState extends State<SelectNumbrOfQuestions> {
  List<String> QuestionCounts = ['50', '100', '150', '200'];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/images/arrow_left.svg',
              width: 22,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const CustomText(
            text: 'Select number of question',
            color: globalColors.BlackColor,
            fontsize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              30.h,
              Column(
                children: QuestionCounts.asMap().entries.map(
                  (entry) {
                    final index = entry.key;
                    final text = entry.value;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Custom_question_container(
                          text: '$text Questions',
                          isSelected: selectedIndex == index,
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
              Spacer(),
              SizedBox(
                height: 56,
                child: Custom_button(
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
