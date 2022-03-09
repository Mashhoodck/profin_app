import 'package:flutter/material.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';

class ContainerTag extends StatelessWidget {
  final String tagText;
  const ContainerTag({Key? key, required this.tagText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.textFieldsColor,
          borderRadius: BorderRadius.circular(Dimensions.radius15)),
      padding: EdgeInsets.only(
          left: Dimensions.width15,
          right: Dimensions.width15,
          top: Dimensions.height10,
          bottom: Dimensions.height10),
      child: Text(tagText),
    );
  }
}
