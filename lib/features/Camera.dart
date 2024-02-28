// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Attempted.dart';
import 'package:omrsheet_app/widgets/customAppbar.dart';
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
            text: '50 Questions',
            color: globalColors.BlackColor,
            fontsize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  30.h,
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/images/scanner_side.svg',
                      ),
                      Positioned(
                          bottom: MediaQuery.of(context).size.height * .35,
                          left: MediaQuery.of(context).size.width * .25,
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Attempted(),
                                    ));
                              },
                              child: Image.asset('assets/images/scanner.gif'))),
                    ],
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
