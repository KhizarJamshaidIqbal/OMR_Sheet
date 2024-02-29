// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:svg_flutter/svg.dart';

class Custom_question_container extends StatelessWidget {
  final String text;
  final bool isSelected;
  const Custom_question_container(
      {super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: isSelected ? globalColors.primaryColor : globalColors.WhiteColor,
        border: Border.all(color: globalColors.primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            isSelected
                ? SvgPicture.asset('assets/images/help-circle2.svg')
                : SvgPicture.asset('assets/images/help-circle.svg'),
            10.w,
            CustomText(
              text: text,
              fontWeight: FontWeight.w400,
              color: isSelected
                  ? globalColors.WhiteColor
                  : globalColors.primaryColor,
              fontsize: 20,
            ),
            const Spacer(),
            isSelected
                ? SvgPicture.asset('assets/images/arrow_right2.svg')
                : SvgPicture.asset('assets/images/arrow_right.svg'),
          ],
        ),
      ),
    );
  }
}
