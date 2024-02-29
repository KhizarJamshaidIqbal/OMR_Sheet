// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Camera.dart';
import 'package:omrsheet_app/widgets/customAppbar.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:svg_flutter/svg.dart';

class ShowCaseMessage extends StatelessWidget {
  const ShowCaseMessage({super.key});

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
            text: 'Disclaimer',
            color: globalColors.BlackColor,
            fontsize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  30.h,
                  // SvgPicture.asset('assets/images/mcq3.svg'),
                  Image.asset(
                    'assets/images/mcq4.jpg',
                    width: double.infinity,
                  ),
                  20.h,
                  const CustomText(
                    text:
                        'Before capturing photos, please ensure that all elements align within the designated box. This attention to composition enhances the quality of your images and ensures optimal functionality within the app. For further assistance, refer to our guidelines.',
                    color: globalColors.primaryColor,
                    fontsize: 20,
                    textAlign: TextAlign.justify,
                    fontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 56,
                    child: Custom_button(
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
        ),
      ),
    );
  }
}
