// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Result.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';

class SuccessfullySubmitted extends StatelessWidget {
  const SuccessfullySubmitted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/images/TickMark.json',
                fit: BoxFit.contain, height: 150, width: 150),
            const CustomText(
                text: 'Your OMR Sheet has been submitted successfully!',
                color: globalColors.BlackColor,
                textAlign: TextAlign.center,
                fontsize: 24),
            10.h,
            SizedBox(
              height: 35,
              width: 130,
              child: Custom_button(
                title: 'View Result',
                buttonTextfontsize: 14,
                backgroundColor: globalColors.primaryColor,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Result(),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
