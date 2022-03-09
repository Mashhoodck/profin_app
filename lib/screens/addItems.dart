import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proffin_app/constants.dart';
import 'package:proffin_app/screens/loginScreen.dart';
import 'package:proffin_app/screens/paymentscree.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/companyListPopup.dart';
import 'package:proffin_app/widgets/containerTile.dart';
import 'package:proffin_app/widgets/containertags.dart';
import 'package:proffin_app/widgets/customAppBar.dart';
import 'package:proffin_app/widgets/otlineBorerTextField.dart';
import 'package:proffin_app/widgets/outLinedContainer.dart';
import 'package:proffin_app/widgets/roundedButton.dart';
import 'package:proffin_app/widgets/searchFieldFilledColor.dart';
import 'package:proffin_app/widgets/semiRoundedTextfield.dart';
import 'package:proffin_app/widgets/textFieldPopup.dart';

class AddItems extends StatelessWidget {
  const AddItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.textFieldsColor,
                child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppbar(
                        tittle: "Add Items",
                      ),
                      SizedBox(
                        height: Dimensions.height30,
                      ),
                      Text(
                        "Customer Name",
                        style: TextStyle(color: AppColors.fadeText),
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "ABC Store",
                                  style: TextStyle(
                                      fontSize: Dimensions.font20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Text(
                                  "(Bal : \$10012)",
                                  style: TextStyle(color: AppColors.fadeText),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Icon(Icons.person_add),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => CompanyList(),
                              );
                            },
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      SearchField(
                        fillColor: Colors.white,
                        labelText: "Add Items",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              ContainerTile(
                btnclick: () {
                  showDialog(
                    context: context,
                    builder: (context) => ProductPopup(),
                  );
                },
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              ContainerTile(),
              SizedBox(
                height: Dimensions.height10,
              ),
              ContainerTile(),
              SizedBox(
                height: Dimensions.height10,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              ContainerTile(),
              SizedBox(
                height: Dimensions.height10,
              ),
              ContainerTile(),
              SizedBox(
                height: Dimensions.height80,
              ),
              Divider(
                thickness: 1,
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
                    ContainerTag(tagText: "Items: 3"),
                    ContainerTag(
                      tagText: "Quantity : 123",
                    ),
                    ContainerTag(tagText: "Amount : \$ 123")
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.height80, right: Dimensions.height80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerTag(tagText: "Tax: \$ 13"),
                    ContainerTag(
                      tagText: "Net Total :\$ 143",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              AuthenticButton(
                btnText: "Next",
                btnColor: AppColors.mainColor,
                btnTextColor: AppColors.whiteText,
                btnpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductPopup extends StatelessWidget {
  const ProductPopup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius15)),
      child: Container(
        height: Dimensions.height400,
        width: double.maxFinite,
        margin:
            EdgeInsets.only(left: Dimensions.width5, right: Dimensions.width5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Item Id : 101"),
            SizedBox(
              height: Dimensions.height10,
            ),
            Text(
              "Dettol Hand Wash 900ml",
              style: TextStyle(
                  fontSize: Dimensions.font20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width5, right: Dimensions.width5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Text("Qty")),
                      Container(
                        margin: EdgeInsets.all(
                          Dimensions.width5,
                        ),
                        width: Dimensions.height80,
                        height: Dimensions.height45,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: Dimensions.width10),
                          child: Text("Unit")),
                      OutlinedContainer(),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: Dimensions.width10),
                          child: Text("Unit")),
                      Container(
                        margin: EdgeInsets.all(Dimensions.width5),
                        width: Dimensions.height80,
                        height: Dimensions.height45,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Text(
              "Amount :\$ 0 .00",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Tax Amount : \$ 0.00",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Center(
                child: AuthenticButton(
              btnpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()));
              },
              btnText: "+Add Item",
              btnColor: AppColors.mainColor,
              btnTextColor: Colors.white,
            ))
          ],
        ),
      ),
    );
  }
}
