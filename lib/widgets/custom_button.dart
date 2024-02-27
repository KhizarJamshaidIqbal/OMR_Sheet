// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';

class custom_button extends StatelessWidget {
  final String title;
  bool loading;
  Color backgroundColor, textColor;
  final VoidCallback onPress;
  custom_button(
      {super.key,
      required this.title,
      this.loading = false,
      required this.onPress,
      this.textColor = globalColors.WhiteColor,
      this.backgroundColor = globalColors.primaryColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: loading ? null : onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
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
                  fontsize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ),
    );
  }
}
