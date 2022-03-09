import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String tittle;
  const CustomAppbar({Key? key, this.tittle = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        Text(
          tittle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(Icons.menu)
      ],
    );
  }
}
