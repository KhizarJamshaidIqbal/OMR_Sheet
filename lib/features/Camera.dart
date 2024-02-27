// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:svg_flutter/svg.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: SingleChildScrollView(
            child: Padding(
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
                  30.h,
                  const SizedBox(
                    height: 600,
                    width: double.infinity,
                    child: Placeholder(
                      child: Center(
                          child: Text(
                        'Camera Screen',
                        style: TextStyle(fontSize: 40),
                      )),
                    ),
                  ),
                  50.h,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
