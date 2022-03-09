import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Color? btnColor;
  final double? btnWidth;
  final Color? btnTextColor;
  final VoidCallback onClick;
  const RoundedButton(
      {Key? key,
      required this.btnText,
      this.btnColor,
      this.btnWidth,
      this.btnTextColor,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: onClick,
        color: btnColor,
        minWidth: btnWidth,
        textColor: btnTextColor,
        child: Text(btnText),
      ),
    );
  }
}
