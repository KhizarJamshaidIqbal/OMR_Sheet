// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Camera.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:svg_flutter/svg.dart';

class ShowCaseMessage extends StatelessWidget {
  const ShowCaseMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              30.h,
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/images/arrow_left.svg',
                      width: 22,
                    ),
                  ),
                  20.w,
                  const CustomText(
                    text: 'Disclaimer',
                    color: globalColors.BlackColor,
                    fontsize: 20,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
              20.h,
              SvgPicture.asset('assets/images/Scan_Info.svg'),
              20.h,
              const CustomText(
                text:
                    'Before capturing photos, please ensure that all elements align within the designated box. This attention to composition enhances the quality of your images and ensures optimal functionality within the app. For further assistance, refer to our guidelines.',
                color: globalColors.primaryColor,
                fontsize: 20,
                fontWeight: FontWeight.w400,
              ),
              const Spacer(),
              SizedBox(
                height: 56,
                child: custom_button(
                  textColor: globalColors.WhiteColor,
                  backgroundColor: globalColors.primaryColor,
                  title: 'Start Scan',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Camera(),
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
