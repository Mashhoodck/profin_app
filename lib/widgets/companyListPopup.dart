import 'package:flutter/material.dart';
import 'package:proffin_app/screens/addItems.dart';
import 'package:proffin_app/screens/paymentscree.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';
import 'package:proffin_app/widgets/roundedButton.dart';
import 'package:proffin_app/widgets/searchFieldFilledColor.dart';

class CompanyList extends StatefulWidget {
  const CompanyList({Key? key}) : super(key: key);

  @override
  State<CompanyList> createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  List<String> companyNames = [
    "101 /ABC Company",
    "102 /ABC Company",
    "103 /ABC Company",
    "104 /ABC Company",
    "105 /ABC Company",
    "106 /ABC Company",
    "107 /ABC Company",
    "108 /ABC Company",
    "109 /ABC Company",
    "110 /ABC Company",
    "111 /ABC Company",
    "112 /ABC Company",
    "113 /ABC Company",
    "114 /ABC Company",
  ];
  List<String> foundedCompanyNames = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    companyNames.addAll(foundedCompanyNames);
  }

  void runSearchFilter(String typedCompanyName) {
    var results = List.filled(0, "0", growable: true);

    if (typedCompanyName.isEmpty) {
      results = companyNames;
    } else {
      results = companyNames
          .where((company) =>
              company.toLowerCase().contains(typedCompanyName.toLowerCase()))
          .toList();
    }
    setState(() {
      foundedCompanyNames = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> foundedCompanyList = [];
    return Dialog(
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius15)),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: Container(
                child: TextField(
                  onChanged: (val) {
                    runSearchFilter(val);
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Your Customer",
                    filled: true,
                    fillColor: AppColors.textFieldsColor,
                    contentPadding: EdgeInsets.only(
                        left: Dimensions.width10,
                        right: Dimensions.width10,
                        top: Dimensions.height10,
                        bottom: Dimensions.height10),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              )),
          SizedBox(
            height: Dimensions.height30,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(companyNames[index]),
                );
              },
              itemCount: companyNames.length,
            ),
          ),
          RoundedButton(
            btnWidth: Dimensions.height100,
            btnText: "Done",
            btnColor: AppColors.mainColor,
            btnTextColor: Colors.white,
            onClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddItems()));
            },
          )
        ],
      ),
    );
  }
}
