import 'package:flutter/material.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';

class ContainerTile extends StatelessWidget {
  final VoidCallback? btnclick;
  const ContainerTile({Key? key, this.btnclick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: btnclick,
      child: Container(
        padding: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height20,
            bottom: Dimensions.height20),
        margin: EdgeInsets.only(
          left: Dimensions.width30,
          right: Dimensions.width30,
        ),
        decoration: BoxDecoration(
            color: AppColors.textFieldsColor,
            borderRadius: BorderRadius.circular(Dimensions.radius15)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID : 101"),
                Text(
                  "Dettol Handwash 900ml",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rate : \$12"),
                Text("Qty : 12 CTN"),
                Text("Amount : \$ 122.09")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
