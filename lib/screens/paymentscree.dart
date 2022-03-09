import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proffin_app/screens/printInvoice.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/containertags.dart';
import 'package:proffin_app/widgets/customAppBar.dart';
import 'package:proffin_app/widgets/roundedButton.dart';
import 'package:proffin_app/widgets/searchFieldFilledColor.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.textFieldsColor,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            "Add Items",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.menu,
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PaymentScreenWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentScreenWidget extends StatefulWidget {
  const PaymentScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentScreenWidget> createState() => _PaymentScreenWidgetState();
}

class _PaymentScreenWidgetState extends State<PaymentScreenWidget> {
  @override
  Widget build(BuildContext context) {
    int? _value = 1;
    Color _RradioButtunColor = Colors.black;
    return Container(
      margin:
          EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Dimensions.height20,
          ),
          Text(
            "Payment Methord",
            style: TextStyle(
                fontSize: Dimensions.font20, fontWeight: FontWeight.bold),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: Dimensions.width15,
                        ),
                        Icon(Icons.home_rounded),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Text(
                          "Bank Transfer",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Radio<int>(
                    value: 1,
                    activeColor: Colors.black,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: Dimensions.width15,
                        ),
                        Icon(Icons.attach_money_sharp),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Text(
                          "Cash",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Radio<int>(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                        print(value);
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: Dimensions.width15,
                        ),
                        Icon(Icons.money),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Text(
                          "Cheque",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Radio<int>(
                    value: 3,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  )
                ],
              )
            ],
          ),

          //discount widget
          SizedBox(
            height: Dimensions.height20,
          ),
          Text(
            "Discount",
            style: TextStyle(
                fontSize: Dimensions.font20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$29",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height30,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Tax Amount",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$29",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                    width: 100,
                    child: SearchField(
                      labelText: "\$00.0",
                      fillColor: AppColors.textFieldsColor,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount  (Iclude Vat) ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$29",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          //Credit or Debit

          SizedBox(
            height: Dimensions.height20,
          ),
          Text(
            "Credit Or Debit",
            style: TextStyle(
                fontSize: Dimensions.font20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: Dimensions.width15,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    Text(
                      "Credit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Radio<int>(
                value: 1,
                groupValue: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val;
                  });
                },
                activeColor: Colors.black,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: Dimensions.width15,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    Text(
                      "Debit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Radio<int>(
                value: 2,
                groupValue: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val;
                  });
                },
                activeColor: Colors.black,
              )
            ],
          ),

          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Advance",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                    width: 100,
                    child: SearchField(
                      labelText: "\$00.0",
                      fillColor: AppColors.textFieldsColor,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Due Date",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                    width: 100,
                    child: SearchField(
                      labelText: "\$00.0",
                      fillColor: AppColors.textFieldsColor,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount  (Iclude Vat) ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("\$29")
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height30,
          ),

          // Bottom Container with tag button

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerTag(tagText: "Items :3"),
                ContainerTag(tagText: "Quantity : 123"),
                ContainerTag(tagText: "Amount : 123")
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width50, right: Dimensions.width50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerTag(tagText: "Items :3"),
                ContainerTag(tagText: "Quantity : 123"),
              ],
            ),
          ),

          SizedBox(
            height: Dimensions.height20,
          ),
          Center(
            child: AuthenticButton(
              btnText: "Next",
              btnColor: AppColors.mainColor,
              btnTextColor: AppColors.whiteText,
              btnpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrintScreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}
