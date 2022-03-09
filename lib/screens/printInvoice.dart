import 'package:flutter/material.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/customAppBar.dart';
import 'package:proffin_app/widgets/successPopup.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width30,
                      right: Dimensions.width30,
                      top: Dimensions.height30,
                      bottom: Dimensions.height30),
                  color: AppColors.textFieldsColor,
                  child: CustomAppbar(
                    tittle: "Print",
                  )),
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Items"), Text("3")],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Quantity"), Text("15")],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Amount"), Text("\$ 29.50")],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Tax Amount"), Text("\$ 29.4")],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Discount"), Text("\$ 29.4")],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment methord"),
                        Text("Bank"),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Net Total",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("\$ 29.4")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height150,
              ),
              SizedBox(
                height: Dimensions.height150,
              ),
              AuthenticButton(
                btnText: "Print Invoice",
                btnpress: () {
                  showDialog(
                    context: context,
                    builder: (context) => SuccessDilogue(),
                  );
                },
                btnColor: AppColors.greenColor,
                btnTextColor: Colors.white,
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Text("Save")
            ],
          ),
        ),
      ),
    );
  }
}
