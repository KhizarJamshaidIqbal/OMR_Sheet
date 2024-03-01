// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Select_Number_of_Questions.dart';
import 'package:omrsheet_app/features/Testing_Results.dart';
import 'package:omrsheet_app/widgets/CustomTextField.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:intl/intl.dart';

class SelectQuestions extends StatelessWidget {
  const SelectQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController NameController = TextEditingController();
    final TextEditingController RollNumberController = TextEditingController();
    final TextEditingController DOBController = TextEditingController();
    final List<String> genderOptions = ['Male', 'Female', 'Other'];
    String selectedGender = 'Male';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: globalColors.WhiteColor,
          centerTitle: true,
          title: CustomText(
              text: 'Dashboard',
              color: globalColors.primaryColor,
              fontsize: 20),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 30.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  30.h,
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                              text: '*',
                              color: globalColors.DangerColor,
                              fontsize: 18),
                          5.w,
                          CustomText(
                              text: 'Name',
                              color: globalColors.primaryColor,
                              fontsize: 20),
                        ],
                      ),
                      10.h,
                      CustomTextField(
                        controller: NameController,
                        hintText: 'Enter your name',
                        borderColor: globalColors.primaryColor,
                        hintTextColor: globalColors.primaryColor,
                      ),
                    ],
                  ),
                  20.h,
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                              text: '*',
                              color: globalColors.DangerColor,
                              fontsize: 18),
                          5.w,
                          CustomText(
                              text: 'Roll Number',
                              color: globalColors.primaryColor,
                              fontsize: 20),
                        ],
                      ),
                      10.h,
                      CustomTextField(
                        controller: RollNumberController,
                        hintText: 'Enter your roll number',
                        borderColor: globalColors.primaryColor,
                        hintTextColor: globalColors.primaryColor,
                      ),
                    ],
                  ),
                  20.h,
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                              text: '*',
                              color: globalColors.DangerColor,
                              fontsize: 18),
                          5.w,
                          CustomText(
                              text: 'Gender',
                              color: globalColors.primaryColor,
                              fontsize: 20),
                        ],
                      ),
                      10.h,
                      DropdownButtonFormField<String>(
                        value: selectedGender,
                        onChanged: (value) {
                          selectedGender = value!;
                        },
                        items: genderOptions.map((gender) {
                          return DropdownMenuItem(
                            value: gender,
                            child: Text(gender),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          fillColor: globalColors.WhiteColor,
                          hintText: 'Select your Gender',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                BorderSide(color: globalColors.primaryColor),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                        ),
                      ),
                    ],
                  ),
                  20.h,
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                              text: '*',
                              color: globalColors.DangerColor,
                              fontsize: 18),
                          5.w,
                          CustomText(
                              text: 'Date of Birth',
                              color: globalColors.primaryColor,
                              fontsize: 20),
                        ],
                      ),
                      10.h,
                      DateTimeField(
                        format: DateFormat('yyyy-MM-dd'),
                        controller: DOBController,
                        decoration: InputDecoration(
                          hintText: 'Select your Date of Birth',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                BorderSide(color: globalColors.primaryColor),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                        ),
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                            context: context,
                            initialDate: currentValue ?? DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                        },
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 56,
                    child: Custom_button(
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
                    child: Custom_button(
                      textColor: globalColors.primaryColor,
                      backgroundColor: globalColors.WhiteColor,
                      title: 'View Result',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TestingResults(),
                            ));
                      },
                    ),
                  ),
                  // 30.h,
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
