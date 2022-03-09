import 'package:flutter/material.dart';
import 'package:proffin_app/utils/dimensions.dart';

class RoundedTextFildPopup extends StatefulWidget {
  const RoundedTextFildPopup({Key? key}) : super(key: key);

  @override
  State<RoundedTextFildPopup> createState() => _RoundedTextFildPopupState();
}

class _RoundedTextFildPopupState extends State<RoundedTextFildPopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          filled: true,
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
