// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Camera.dart';
import 'package:omrsheet_app/features/SuccessfullySubmitted.dart';
import 'package:omrsheet_app/widgets/CustomDataTable.dart';
import 'package:omrsheet_app/widgets/customAppbar.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:svg_flutter/svg.dart';

class Attempted extends StatelessWidget {
  final String imagePath;
  const Attempted({super.key, required this.imagePath});

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
              text: 'OMR sheet confirmation',
              color: globalColors.BlackColor,
              fontsize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            30.h,
                            SingleChildScrollView(
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
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
                                            text: 'Total no. of question:',
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
                              ),
                            ),
                            10.h,
                            // Image.asset('assets/images/mcqs.jpg'),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(File(imagePath))),
                            20.h,
                            CustomDataTable(
                              columnNames: const ['Q.No', 'Attempted'],
                              rowData: List.generate(
                                100,
                                (index) {
                                  final qNo = (index + 1).toString();
                                  final attempted =
                                      Random().nextBool() ? 'A' : '-';
                                  return [qNo, attempted];
                                },
                              ),
                            ),
                            10.h,
                          ]))),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 90,
                  width: double.infinity,
                  color: globalColors.WhiteColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Custom_button(
                          title: 'Re-upload',
                          textColor: globalColors.primaryColor,
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Camera(),
                                ));
                          },
                        )),
                        const SizedBox(width: 20),
                        Expanded(
                            child: Custom_button(
                          title: 'Confirm',
                          backgroundColor: globalColors.primaryColor,
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SuccessfullySubmitted(),
                                ));
                          },
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
