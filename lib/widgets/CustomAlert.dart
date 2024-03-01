// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/ReportProblem.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:omrsheet_app/widgets/custom_button.dart';
import 'package:svg_flutter/svg.dart';

class CustomAlertDialog extends StatefulWidget {
  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: AlertDialog(
        backgroundColor: globalColors.WhiteColor,
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset('assets/images/alert.svg'),
                  10.w,
                  CustomText(
                      text: 'Scanning Alert',
                      color: globalColors.DangerColor,
                      fontWeight: FontWeight.bold,
                      fontsize: 18),
                  Spacer(),
                  SvgPicture.asset('assets/images/cancel.svg')
                ],
              ),
              30.h,
              Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/dart.svg'),
                      15.w,
                      Expanded(
                        child: CustomText(
                            text: 'Keep sheet on flat surface while Scanning.',
                            color: globalColors.DarkGreyColor,
                            fontsize: 16),
                      ),
                    ],
                  ),
                  10.h,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/dart.svg'),
                      15.w,
                      Expanded(
                        child: CustomText(
                            text: 'Keep answer sheet align with markers grid.',
                            color: globalColors.DarkGreyColor,
                            fontsize: 16),
                      ),
                    ],
                  ),
                  10.h,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/dart.svg'),
                      15.w,
                      Expanded(
                        child: CustomText(
                            text:
                                'Make sure to scan answer sheet in proper lighting ',
                            color: globalColors.DarkGreyColor,
                            fontsize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              30.h,
              Custom_button(
                  title: 'Report a problem',
                  backgroundColor: globalColors.primaryColor,
                  textColor: globalColors.WhiteColor,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReportProblem(),
                        ));
                  }),
              10.h,
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: CustomText(
                      text: 'Cancel',
                      color: globalColors.DarkGreyColor,
                      fontsize: 16))
            ],
          ),
        ),
      ),
    );
  }
}

// To show the dialog, use this code:
// showDialog(context: context, builder: (BuildContext context) => CustomAlertDialog());
