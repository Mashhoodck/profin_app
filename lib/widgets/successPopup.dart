import 'package:flutter/material.dart';
import 'package:proffin_app/screens/addItems.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';

class SuccessDilogue extends StatelessWidget {
  const SuccessDilogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width30, right: Dimensions.width30),
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height100,
                  bottom: Dimensions.height100),
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Center(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: -50,
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.greenColor,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Dimensions.height45,
                        ),
                        Material(
                          child: Text(
                            "Invoice  Printed Succesfully",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height45,
                        ),
                        AuthenticButton(
                          btnText: "OK",
                          btnpress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddItems()));
                          },
                          btnColor: AppColors.greenColor,
                          btnTextColor: Colors.white,
                        ),
                        SizedBox(
                          height: Dimensions.height20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
