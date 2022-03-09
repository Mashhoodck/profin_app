import 'package:flutter/material.dart';
import 'package:proffin_app/utils/dimensions.dart';

class SearchField extends StatelessWidget {
  final Color fillColor;
  final Widget? prefixIcon;
  final String labelText;
  const SearchField(
      {Key? key,
      this.fillColor = Colors.white,
      this.prefixIcon,
      this.labelText = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: labelText,
          filled: true,
          fillColor: fillColor,
          contentPadding: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
              top: Dimensions.height10,
              bottom: Dimensions.height10),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(Dimensions.radius15)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
