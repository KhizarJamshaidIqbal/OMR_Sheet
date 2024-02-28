// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final Widget title;

  const CustomAppBar({Key? key, required this.leading, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: leading,
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
