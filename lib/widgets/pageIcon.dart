import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proffin_app/utils/dimensions.dart';

class PageIcon extends StatelessWidget {
  final SvgPicture pageIcon;

  const PageIcon({
    Key? key,
    required this.pageIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height80,
      width: Dimensions.height80,
      child: pageIcon,
    );
  }
}
