import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proffin_app/constants.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';

class TextFieldsLogin extends StatelessWidget {
  final String? labeText;
  final IconData? icon;
  final Widget? sufixIcon;

  const TextFieldsLogin({Key? key, this.labeText, this.icon, this.sufixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.textFieldsColor,
          borderRadius: BorderRadius.circular(8)),
      margin:
          EdgeInsets.only(left: Dimensions.width50, right: Dimensions.width50),
      padding: EdgeInsets.all(4),
      child: TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintStyle: kHintText,
            labelText: labeText,
            labelStyle: TextStyle(color: Colors.black),
            focusColor: Colors.black,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            suffixIcon: sufixIcon),
      ),
    );
  }
}
