import 'package:flutter/material.dart';
import 'package:proffin_app/utils/dimensions.dart';

class AuthenticButton extends StatelessWidget {
  final String btnText;
  final Color? btnColor;
  final Color? btnTextColor;
  final VoidCallback btnpress;
  const AuthenticButton(
      {Key? key,
      required this.btnText,
      this.btnColor,
      this.btnTextColor,
      required this.btnpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(16),
      minWidth: Dimensions.height150,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: btnpress,
      color: btnColor,
      textColor: btnTextColor,
      child: Text(btnText),
    );
  }
}
