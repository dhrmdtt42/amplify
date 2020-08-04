import 'package:amplify_app/utils/common_data.dart';
import 'package:amplify_app/view_widget/tabs/second_signup_tab.dart';
import 'package:amplify_app/view_widget/tabs/sign_up.dart';
import 'package:flutter/cupertino.dart';
//import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef TabChangeCallback = void Function();

class FirstSignUpTab extends StatefulWidget {
  const FirstSignUpTab({this.onTabChangeCallback});
  final TabChangeCallback onTabChangeCallback;

  @override
  _FirstSignUpTabState createState() => _FirstSignUpTabState(onTabChangeCallback);
}
class _FirstSignUpTabState extends State<FirstSignUpTab> {
  TabChangeCallback onTabChangeCallback;

  _FirstSignUpTabState(TabChangeCallback onTabChangeCallback){
    this.onTabChangeCallback = onTabChangeCallback;
  }


  bool checkboxMale = false;
  bool checkboxFemale = false;
  bool checkboxOthers = false;
  CommonData commondata = new CommonData();
  String reasonNotGettingRationType;

  static const  notGettingRationReasonType = <String>[
    "Once in Week",
    "Twice in Week",
    "Thrice in Week",
    "Four Times in Week"
  ];

  final List<DropdownMenuItem<String>> _dropDownreasonNotGettingRationItems = notGettingRationReasonType
      .map((String value) =>
      DropdownMenuItem<String>(value: value, child: Text(value)))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 32.0,bottom:20.0,left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SignUpPage()));
                      },
                      child: Text("Whats your email address?",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style:GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 14.0
                ),
                decoration: InputDecoration(
                  hintText: 'Username or Email address',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins-Regular",
                      color: Colors.grey,
                      fontSize: 14.0
                  ),

                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom:20.0,left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SignUpPage()));
                      },
                      child: Text("Whats your gender?",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Text("Male", style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),),
                        Checkbox(
                            value: checkboxMale,
                            checkColor: Colors.black,  // color of tick Mark
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              setState(() {
                                checkboxMale = value;
                                if(value == true){
                                  checkboxFemale = false;
                                  checkboxOthers = false;
                                }

                              });
                            }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Text("Female", style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),),
                        Checkbox(
                            value: checkboxFemale,
                            checkColor: Colors.black,  // color of tick Mark
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              setState(() {
                                checkboxFemale = value;
                                if(value == true){
                                  checkboxMale = false;
                                  checkboxOthers = false;
                                }
                              });
                            }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Text("N/A", style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),),
                        Checkbox(
                            value: checkboxOthers,
                            checkColor: Colors.black,  // color of tick Mark
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              setState(() {
                                checkboxOthers = value;
                                if(value == true){
                                  checkboxFemale = false;
                                  checkboxMale = false;
                                }
                              });
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),

//            Padding(
//              padding: const EdgeInsets.all(16.0),
//              child: Row(
//                children: <Widget>[
//
//                  Expanded(
//                    child: Row(
//                      children: <Widget>[
//                        Text("Male",
//                          style:  GoogleFonts.poppins(
//                              color: Colors.black,
//                              fontSize: 14.0,
//                              fontWeight: FontWeight.bold
//                          ),
//                        ),
//                        CheckBox(
//                            value: checkboxMale,
//                            materialTapTargetSize: MaterialTapTargetSize.padded,
//                            onChanged: (bool x) {
//                              checkboxMale = !checkboxMale;
//                            }
//                        ),
//                      ],
//                    ),
//                  ),
//                  Expanded(
//                    child: Row(
//                      children: <Widget>[
//                        Text("Female",
//                          style:  GoogleFonts.poppins(
//                              color: Colors.black,
//                              fontSize: 12.0,
//                              fontWeight: FontWeight.bold
//                          ),
//                        ),
//                        CircularCheckBox(
//                            value: checkboxFemale,
//                            materialTapTargetSize: MaterialTapTargetSize.padded,
//                            onChanged: (bool x) {
//                              checkboxFemale = !checkboxFemale;
//                            }
//                        ),
//                      ],
//                    ),
//                  ),
//                  Expanded(
//                    child: Row(
//                      children: <Widget>[
//                        Text("N/A",
//                          style:  GoogleFonts.poppins(
//                              color: Colors.black,
//                              fontSize: 12.0,
//                              fontWeight: FontWeight.bold
//                          ),
//                        ),
//                        CircularCheckBox(
//                            value: checkboxFemale,
//                            materialTapTargetSize: MaterialTapTargetSize.padded,
//                            onChanged: (bool x) {
//                              checkboxFemale = !checkboxFemale;
//                            }
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom:20.0,left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SignUpPage()));
                      },
                      child: Text("How much do you train?",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(14)),
          child: DropdownButtonHideUnderline(
            child: Row(
              children: <Widget>[
//                      Icon(
//                        Icons.search,
//                        color: Colors.black,
//                      ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton<String>(
                    hint: Text("Select Reason", style: TextStyle(color: Colors.black),),
                    isExpanded: true,
                    value: reasonNotGettingRationType,
//                              _currentSelectedType,
                    isDense: true,
                    onChanged: (String newValue) {
                      setState(() {
                        reasonNotGettingRationType= newValue;
//                        if(reasonNotGettingRationType == "Others")
//                          othersForRCReason = true;
//                        else
//                          othersForRCReason = false;
//                            state.didChange(newValue);
                      });
                    },
                    items: this._dropDownreasonNotGettingRationItems,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
            SizedBox(height: 150.0,),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0,),
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width:325.0,
                      height: 42.0,
                      child: RaisedButton(onPressed: () {
                        onTabChangeCallback();
//                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SignUpPage()));
                      },
                        child: Text(' NEXT ', style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14.0
                        ),),
                        color:commondata.colorFromHex("#f2d493"),
                        shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(25.0),
                            side: BorderSide(color:
                            commondata.colorFromHex("#f2d493")
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
