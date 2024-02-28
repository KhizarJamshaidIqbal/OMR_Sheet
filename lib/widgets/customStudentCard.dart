// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:svg_flutter/svg.dart';

class customStudentCard extends StatelessWidget {
  const customStudentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: globalColors.LightGreyColor,
        border: Border.all(color: globalColors.GreyColor, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            10.h,
            Row(
              children: [
                // SvgPicture.asset('assets/images/Ellipse_1.svg'),
                Image.asset('assets/images/Ellipse_6.png'),
                15.w,
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Anisha Rauniyar',
                      color: globalColors.BlackColor,
                      fontsize: 16,
                    ),
                    SizedBox(height: 5),
                    CustomText(
                      text: '98765',
                      color: globalColors.DarkGreyColor,
                      fontsize: 12,
                    ),
                  ],
                )
              ],
            ),
            15.h,
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Frame_1.svg'),
                      5.w,
                      const CustomText(
                        text: 'Total Questions',
                        color: globalColors.DarkGreyColor,
                        fontsize: 12,
                      ),
                      // 15.w,
                      const Spacer(),
                      const CustomText(
                        fontWeight: FontWeight.bold,
                        text: '100',
                        color: globalColors.BlackColor,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
                20.w,
                // const Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Frame_2.svg'),
                      5.w,
                      const CustomText(
                        text: 'Obtained',
                        color: globalColors.DarkGreyColor,
                        fontsize: 12,
                      ),
                      const Spacer(),
                      const CustomText(
                        fontWeight: FontWeight.bold,
                        text: '72/100',
                        color: globalColors.BlackColor,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            10.h,
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Frame_3.svg'),
                      5.w,
                      const CustomText(
                        text: 'Correct',
                        color: globalColors.SuccessColor,
                        fontsize: 12,
                      ),
                      // 15.w,
                      const Spacer(),
                      const CustomText(
                        fontWeight: FontWeight.bold,
                        text: '76',
                        color: globalColors.SuccessColor,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
                20.w,
                // const Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Frame_4.svg'),
                      5.w,
                      const CustomText(
                        text: 'Incorrect',
                        color: globalColors.DangerColor,
                        fontsize: 12,
                      ),
                      const Spacer(),
                      const CustomText(
                        fontWeight: FontWeight.bold,
                        text: '12',
                        color: globalColors.DangerColor,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            15.h,
          ],
        ),
      ),
    );
  }
}
