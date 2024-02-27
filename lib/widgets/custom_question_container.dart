// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:svg_flutter/svg.dart';

class custom_question_container extends StatelessWidget {
  final String text;
  const custom_question_container({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: globalColors.WhiteColor,
        border: Border.all(color: globalColors.primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            SvgPicture.asset('assets/images/help-circle.svg'),
            10.w,
            CustomText(
              text: text,
              fontWeight: FontWeight.w400,
              color: globalColors.primaryColor,
              fontsize: 20,
            ),
            const Spacer(),
            SvgPicture.asset('assets/images/arrow_right.svg'),
          ],
        ),
      ),
    );
  }
}
