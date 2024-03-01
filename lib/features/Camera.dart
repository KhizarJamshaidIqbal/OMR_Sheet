// ignore_for_file: file_names, unused_local_variable, unused_element, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, use_build_context_synchronously, unnecessary_null_comparison

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/app_size.dart';
import 'package:omrsheet_app/constants/colors.dart';
import 'package:omrsheet_app/features/Attempted.dart';
import 'package:omrsheet_app/main.dart';
import 'package:omrsheet_app/widgets/customAppbar.dart';
import 'package:omrsheet_app/widgets/custom_Text_Widget.dart';
import 'package:svg_flutter/svg.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  late CameraImage imgCamera;
  late CameraController cameraController;
  bool isWorking = false;
  String result = "";
  bool isFlashOn = true;

  initCamera() {
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);

    cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }

      setState(() {
        cameraController.startImageStream((imageFromStream) {
          if (!isWorking) {
            isWorking = true;
            imgCamera = imageFromStream;
          }
        });
      });
      // Set flash mode to torch initially
      cameraController.setFlashMode(FlashMode.torch);
    });
  }

  @override
  void initState() {
    super.initState();

    initCamera();
  }

  @override
  void dispose() {
    super.dispose();
    cameraController.dispose();
    cameraController.setFlashMode(FlashMode.off);
    // cameraController.stopImageStream();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              30.h,
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height * .002,
                    left: MediaQuery.of(context).size.width * .053,
                    right: MediaQuery.of(context).size.width * .053,
                    bottom: MediaQuery.of(context).size.height * .002,
                    child: SizedBox(
                      height: 500,
                      child: (!cameraController.value.isInitialized)
                          ? Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff2B2A2A)),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: AspectRatio(
                                aspectRatio: cameraController.value.aspectRatio,
                                child: CameraPreview(cameraController),
                              ),
                            ),
                    ),
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/scanner_side.svg',
                    ),
                  ),
                  Positioned(
                      bottom: MediaQuery.of(context).size.height * .3,
                      left: MediaQuery.of(context).size.width * .3,
                      child: InkWell(
                          onTap: () async {
                            XFile? image = await cameraController.takePicture();
                            if (image != null) {
                              // Set flash mode to off
                              cameraController.setFlashMode(FlashMode.off);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Attempted(imagePath: image.path),
                                ),
                              );
                            }
                          },
                          child: Image.asset('assets/images/scanner.gif'))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
