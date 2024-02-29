// ignore_for_file: file_names

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/CustomDataTable.dart';
import 'package:omrsheet_app/widgets/customAppbar.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:svg_flutter/svg.dart';

class Result extends StatelessWidget {
  const Result({super.key});

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
              text: 'OMR Sheet Result',
              color: globalColors.BlackColor,
              fontsize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        15.h,
                        Column(
                          children: [
                            Row(
                              children: [
                                const CustomText(
                                  text: 'Name:',
                                  color: globalColors.GreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                10.w,
                                const CustomText(
                                  text: 'Anisha Rauniyar',
                                  color: globalColors.DarkGreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            5.h,
                            Row(
                              children: [
                                const CustomText(
                                  text: 'Roll No: ',
                                  color: globalColors.GreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                10.w,
                                const CustomText(
                                  text: '98765',
                                  color: globalColors.DarkGreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            5.h,
                            Row(
                              children: [
                                const CustomText(
                                  text: 'Gender:',
                                  color: globalColors.GreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                10.w,
                                const CustomText(
                                  text: 'Female',
                                  color: globalColors.DarkGreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            5.h,
                            Row(
                              children: [
                                const CustomText(
                                  text: 'Date of Birth:',
                                  color: globalColors.GreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                10.w,
                                const CustomText(
                                  text: '2054/01/12',
                                  color: globalColors.DarkGreyColor,
                                  fontsize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                        20.h,
                        SingleChildScrollView(
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    20.w,
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const CustomText(
                                            text: 'Attempted Questions',
                                            color: globalColors.BlackColor,
                                            fontsize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          10.h,
                                          const CustomText(
                                            text: '88',
                                            color: globalColors.BlackColor,
                                            fontsize: 40,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const CustomText(
                                            text: 'Total no. of question',
                                            color: globalColors.BlackColor,
                                            fontsize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          10.h,
                                          const CustomText(
                                            text: '100',
                                            color: globalColors.BlackColor,
                                            fontsize: 40,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                    ),
                                    20.w,
                                  ],
                                ),
                                20.h,
                                Row(
                                  children: [
                                    20.w,
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const CustomText(
                                            text: 'Marks Obtained',
                                            color: globalColors.BlackColor,
                                            fontsize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          10.h,
                                          const CustomText(
                                            text: '68',
                                            color: globalColors.SuccessColor,
                                            fontsize: 40,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const CustomText(
                                            text: 'Correct Answers',
                                            color: globalColors.BlackColor,
                                            fontsize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          10.h,
                                          const CustomText(
                                            text: '72',
                                            color: globalColors.SuccessColor,
                                            fontsize: 40,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                    ),
                                    20.w,
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset('assets/images/mcqs.jpg'),
                        20.h,
                        CustomDataTable(
                          columnNames: const ['Q.No', 'Attempted'],
                          rowData: List.generate(
                            100,
                            (index) {
                              final qNo = (index + 1).toString();
                              final attempted = Random().nextBool() ? 'A' : '-';
                              return [qNo, attempted];
                            },
                          ),
                        ),
                        10.h,
                      ])))),
    );
  }
}
