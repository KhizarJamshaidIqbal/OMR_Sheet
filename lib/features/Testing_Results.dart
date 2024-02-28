import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/CustomAppBar.dart';
import 'package:omrsheet_app/widgets/customStudentCard.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:svg_flutter/svg.dart';

class TestingResults extends StatelessWidget {
  const TestingResults({Key? key}) : super(key: key);

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
            text: 'Student Results',
            color: globalColors.BlackColor,
            fontsize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const customStudentCard(),
                5.h,
                const customStudentCard(),
                5.h,
                const customStudentCard(),
                5.h,
                const customStudentCard(),
                5.h,
                const customStudentCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
