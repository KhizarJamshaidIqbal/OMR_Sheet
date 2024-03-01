// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/CustomAlert.dart';
import 'package:omrsheet_app/widgets/CustomAppBar.dart';
import 'package:omrsheet_app/widgets/CustomTextField.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:svg_flutter/svg.dart';

class ReportProblem extends StatelessWidget {
  const ReportProblem({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController TitleController = new TextEditingController();
    final TextEditingController ReasonController = new TextEditingController();
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
            text: 'Report a Problem',
            color: globalColors.BlackColor,
            fontsize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              30.h,
              CustomTextField(
                controller: TitleController,
                hintText: 'Title',
                borderColor: globalColors.primaryColor,
                hintTextColor: globalColors.primaryColor,
              ),
              10.h,
              SizedBox(
                height: 120,
                child: CustomTextField(
                  controller: ReasonController,
                  hintText: 'Your reason',
                  borderColor: globalColors.primaryColor,
                  hintTextColor: globalColors.primaryColor,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 56,
                child: Custom_button(
                  textColor: globalColors.WhiteColor,
                  backgroundColor: globalColors.primaryColor,
                  title: 'Submit',
                  onPress: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => CustomAlertDialog());
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const Camera(),
                    //     ));
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
