// ignore_for_file: file_names, prefer_const_constructors

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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 30.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const [
                                        Expanded(
                                          child: CustomText(
                                            text: 'Attempted Questions',
                                            overflow: TextOverflow.visible,
                                            softWrap: false,
                                            color: globalColors.BlackColor,
                                            fontsize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Spacer(),
                                        Expanded(
                                          child: CustomText(
                                            text: 'Total no. of question',
                                            overflow: TextOverflow.visible,
                                            softWrap: false,
                                            color: globalColors.BlackColor,
                                            fontsize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    10.h,
                                    Row(
                                      children: const [
                                        Spacer(),
                                        Expanded(
                                          child: CustomText(
                                            text: '88',
                                            color: globalColors.SuccessColor,
                                            fontsize: 30,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Spacer(),
                                        Spacer(),
                                        Expanded(
                                          child: CustomText(
                                            text: '100',
                                            color: globalColors.BlackColor,
                                            fontsize: 30,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            20.h,
                            // Image.asset('assets/images/mcqs.jpg'),
                            Center(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.file(
                                    File(imagePath),
                                    width: double.infinity,
                                    fit: BoxFit.contain,
                                  )),
                            ),
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
