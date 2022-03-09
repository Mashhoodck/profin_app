import 'package:flutter/material.dart';
import 'package:proffin_app/utils/dimensions.dart';

class OutlineBorderTextField extends StatelessWidget {
  final Color fillColor;
  final Widget? prefixIcon;
  final String labelText;
  const OutlineBorderTextField(
      {Key? key,
      this.fillColor = Colors.white,
      this.prefixIcon,
      this.labelText = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: Dimensions.width50, right: Dimensions.width50),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: labelText,
          filled: true,
          contentPadding: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
              top: Dimensions.width10,
              bottom: Dimensions.width10),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(Dimensions.radius15)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(Dimensions.radius15)),
        ),
      ),
    );
  }
}
