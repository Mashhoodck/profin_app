import 'package:flutter/material.dart';

class ScreenIcons extends StatelessWidget {
  final IconData pageIcons;
  final Color? iconColor;
  final double? iconSize;
  const ScreenIcons(
      {Key? key,
      required,
      required this.pageIcons,
      this.iconColor,
      this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        pageIcons,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
