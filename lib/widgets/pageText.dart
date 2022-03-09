import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeading extends StatelessWidget {
  final String title;

  final TextStyle style;

  const TextHeading({Key? key, required this.title, required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}
