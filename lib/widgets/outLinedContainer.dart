import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proffin_app/utils/dimensions.dart';

class OutlinedContainer extends StatefulWidget {
  final Color fillColor;
  final Widget? prefixIcon;

  const OutlinedContainer({
    Key? key,
    this.fillColor = Colors.white,
    this.prefixIcon,
  }) : super(key: key);

  @override
  State<OutlinedContainer> createState() => _OutlinedContainerState();
}

class _OutlinedContainerState extends State<OutlinedContainer> {
  String? dropdownValue = "QTY";
  List<String> items = <String>['QTY', 'CTN', 'DZN'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: Dimensions.height45,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.radius15)),
      child: Padding(
        padding: EdgeInsets.only(left: 3),
        child: Center(
          child: DropdownButton<String>(
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            value: dropdownValue,
          ),
        ),
      ),
    );
  }
}
