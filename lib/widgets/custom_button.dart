// ignore_for_file: camel_case_types, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';

class Custom_button extends StatelessWidget {
  final String title;
  bool loading;
  final int buttonTextfontsize;
  Color backgroundColor, textColor;
  final VoidCallback onPress;
  Custom_button(
      {super.key,
      required this.title,
      this.loading = false,
      required this.onPress,
      this.textColor = globalColors.WhiteColor,
      this.backgroundColor = globalColors.WhiteColor,
      this.buttonTextfontsize = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: loading ? null : onPress,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: const BorderSide(
            color: globalColors.primaryColor,
            width: 1,
          ),
          // minimumSize: const Size.fromHeight(55),
        ),
        child: loading
            ? LoadingAnimationWidget.staggeredDotsWave(
                color: Colors.white,
                size: 50,
              )
            : Center(
                child: CustomText(
                  text: title,
                  color: textColor,
                  fontsize: buttonTextfontsize,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ),
    );
  }
}
