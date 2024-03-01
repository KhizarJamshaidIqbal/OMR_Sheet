// ignore: file_names
//CustomTextWidget
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final TextOverflow overflow;
  final bool softWrap;
  // final String fontFamily;
  final Color color;
  final int fontsize;
  final FontWeight fontWeight;

  const CustomText({
    super.key,
    this.textAlign = TextAlign.justify,
    required this.text,
    required this.color,
    required this.fontsize,
    this.fontWeight = FontWeight.normal,
    // this.fontFamily = 'Literata-Regular',
    this.textDecoration = TextDecoration.none,
    this.overflow = TextOverflow.clip,
    this.softWrap = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      softWrap: softWrap,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: fontsize.toDouble(),
        // fontFamily: 'Literata-Regular',
        decoration: textDecoration,
      ),
    );
  }
}
