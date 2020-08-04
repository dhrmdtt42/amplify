//import 'package:dio/dio.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:progress_dialog/progress_dialog.dart';
//import 'package:sahyog/model/Ration.dart';
//import 'package:sahyog/model/aadhar.dart';
//import 'package:sahyog/model/address.dart';
//import 'package:sahyog/model/campaign.dart';
//import 'package:http/http.dart' as http;
//import 'package:sahyog/model/campaign.dart';
//import 'package:sahyog/model/campaign.dart';
//import 'package:sahyog/model/family.dart';
//import 'package:sahyog/model/family_address.dart';
//import 'package:sahyog/model/family_employment.dart';
//import 'package:sahyog/model/family_member.dart';
//import 'package:sahyog/model/my_model/call1.dart';
//import 'package:sahyog/model/my_model/call2.dart';
//import 'package:sahyog/model/my_model/campaign_status.dart';
//import 'package:sahyog/model/my_model/family_record.dart';
//import 'package:sahyog/model/my_model/ration_delivery.dart';
//import 'package:sahyog/model/reference.dart';
//import 'package:sahyog/utils/common_data.dart';
//import 'package:sahyog/utils/constants.dart';
//import 'package:sahyog/views_widgets/campaign_call1.dart';
//import 'package:sahyog/views_widgets/dashboard.dart';
//import 'package:sahyog/views_widgets/family_member_details.dart';
//import 'package:sahyog/views_widgets/verification_ch.dart';
//import 'package:sahyog/views_widgets/verification_kpf.dart';
//import 'package:sahyog/views_widgets/verification_reference.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:toast/toast.dart';
//import 'package:http/http.dart';
//import 'dart:convert';
//
//import 'package:toast/toast.dart';
//import 'package:toast/toast.dart';
//
//import 'dashboard.dart';
//import 'dashboard.dart';
//
//class CampaignForm extends StatefulWidget {
//  @override
//  _CampaignFormState createState() => _CampaignFormState();
//}
//
//class _CampaignFormState extends State<CampaignForm> {
//  bool kpfVal = false;
//  bool spncrVal = false;
//  bool friendsVal = false;
//  bool advertisementVal = false;
//  bool otherBenificiaryVal = false;
//  bool othersVal = false;
//  bool socialVal = false;
//  bool hotZoneYesVal = false;
//  bool hotZoneNoVal = false;
//  bool hotZoneOtherVal = false;
//  bool areaUnderNagarNYesVal = false;
//  bool areaUnderNagarNiNoVal = false;
//  bool areaUnderNagarNiOtherVal = false;
//  bool adMisMatchYesVal = false;
//  bool deliveryDoneYesVal = false;
//  bool sentToDelivery = false;
//  bool deliveryDoneNoVal = false;
//  bool oTPMatchYesVal = false;
//  bool OTPMatchNoVal = false;
//  bool adMisMatchNoVal = false;
//  bool gettingRationYesVal = false;
//  bool gettingRationNoVal = false;
//  bool naukariChhotYesVal = false;
//  bool naukariChhotNoVal = false;
//  bool naukariChhotOtherVal = false;
//  bool majdooriChhotYesVal = false;
//  bool majdooriChhotNoVal = false;
//  bool majdooriChhotOtherVal = false;
//  bool majdooriChhotVal = false;
//  bool kaamChhotYesVal = false;
//  bool kaamChhotNoVal = false;
//  bool kaamChhotOtherVal = false;
//  bool verificationCallVal = false;
//  bool verifiedForCall2Val = false;
//  bool referenceCheckVal = false;
//  bool goCheckVal = false;
//  bool noGoCheckVal = false;
//  bool acceptPolicyVal = false;
//  bool othersForRCReason = false;
//  bool verificaion2 = false;
//  bool verification3 = false;
//  bool _validate = false;
//
//
//  double _animatedHeight = 1400.0;
//  double _animatedAddressHeight = 900.0;
//  double _animatedConfirmationHeight = 600.0;
//  double _animatedAadharHeight = 300.0;
//  double _animatedRationDetailsHeight = 400.0;
//  double _animatedFamilyDetailsHeight = 700.0;
//  double _animatedLockdownAffectHeight = 600.0;
//  double _animatedReferencedPersonHeight = 300.0;
//  double _animatedVerificationCallHeight = 700.0;
//  double _animatedRationDeliveryStatusHeight = 550.0;
//  double _animatedStatusHeight = 900.0;
//
//
//  int age  = 18;
//  List<FamilyMember> fmembers = new List<FamilyMember>();
//
//  TextEditingController nameController = new TextEditingController();
//  TextEditingController kpfNameController = new TextEditingController();
//  TextEditingController camp_other_textController = new TextEditingController();
//  TextEditingController camp_age_textController = new TextEditingController();
//  TextEditingController benHouseNoTextController = new TextEditingController();
//  TextEditingController benLocalityTextController = new TextEditingController();
//  TextEditingController benBuildingNameTextController = new TextEditingController();
//  TextEditingController benStreetTextController = new TextEditingController();
//
//
//  TextEditingController benLandMarkTextController = new TextEditingController();
//  TextEditingController benPincodeTextController = new TextEditingController();
//  TextEditingController benCityTextController = new TextEditingController();
//  TextEditingController benContactNumberTextController = new TextEditingController();
//  TextEditingController benRemarksforCall1TextController = new TextEditingController();
//  TextEditingController call2ConfirmAddressTextController = new TextEditingController();
//  TextEditingController call2ConfirmPincodeTextController = new TextEditingController();
//  TextEditingController call2ReasonMismatchTextController = new TextEditingController();
//  TextEditingController call2AadharNumberTextController = new TextEditingController();
//
//  TextEditingController call2RationCardUnitTextController = new TextEditingController();
//  TextEditingController call2ReasonNoRationCardTextController = new TextEditingController();
//  TextEditingController call2RationCardReasonOtherTextController = new TextEditingController();
//  TextEditingController call2TotalNoOfFamilyMemberTextController = new TextEditingController();
//  TextEditingController call2below14YearMemberTextController = new TextEditingController();
//  TextEditingController call2AboveOr14YearsMemberTextController = new TextEditingController();
//  TextEditingController call2NameofFamilyHeadTextController = new TextEditingController();
//
//  TextEditingController addMember1TextController = new TextEditingController();
//  TextEditingController addMember2TextController = new TextEditingController();
//  TextEditingController call2HowLockdownAffectTextController = new TextEditingController();
//  TextEditingController call2IncomebeforeLockdownTextController = new TextEditingController();
//  TextEditingController call2IncomeafterLockdownTextController = new TextEditingController();
//  TextEditingController call2OtherResasonAffectedByTextController = new TextEditingController();
//  TextEditingController call2TellMeSomethingMoreAboutTextController = new TextEditingController();
//  TextEditingController call2NameVerifiedByTextController = new TextEditingController();
//
//  TextEditingController contactVerifiedByTextController = new TextEditingController();
//  TextEditingController call2RelationVrefiedByTextController = new TextEditingController();
//  TextEditingController call2VerfiedRemarksTextController = new TextEditingController();
//  TextEditingController call2RemarksByCHOperatorTextController = new TextEditingController();
//  TextEditingController call2RemarksByOperatorTextController = new TextEditingController();
//  TextEditingController call2RemarksByKPFCommentsTextController = new TextEditingController();
//
//  TextEditingController call2RemarksByKPFOperatorTextController = new TextEditingController();
//  TextEditingController call2RationDeliveredByTextController = new TextEditingController();
//  TextEditingController call2recommendationbyCHTextController = new TextEditingController();
//  TextEditingController call2dateOfRecommendationTextController = new TextEditingController();
//  TextEditingController call2recommendationbyReferenceTextController = new TextEditingController();
//  TextEditingController call2dateOfRecommendationByRefTextController = new TextEditingController();
//  TextEditingController call2recommendationbyKPFTextController = new TextEditingController();
//  TextEditingController call2dateOfRecommendationByKPFTextController = new TextEditingController();
//  TextEditingController call2rationDeliveryStatusTextController = new TextEditingController();
//  TextEditingController call2dateOfRationDeliveredTextController = new TextEditingController();
//  TextEditingController call2dateOfRemarkbyKPFTextController = new TextEditingController();
//
//  TextEditingController call2RationDeliveredDateTextController = new TextEditingController();
//
////  Map Campaign = new Map();
////  Map BenAddress = new Map();
////  Map Confirmation = new Map();
////  Map Aadhar = new Map();
////  Map FamilyRation = new Map();
////  Map  FamilyDetails = new Map();
////  Map LockdownAffect = new Map();
////  Map ReferenceVerifier = new Map();
////  Map RemSel = new Map();
//  final List <String > members = new List<String>();
//
//
//  String KpfNameType;
//  String KpfName2Type;
//  String benificiaryType;
//  String rationCardType;
//  String reasonNotGettingRationType;
//  String aadhAvailabilityType;
//  String aadharVerificationStatusType;
//  String rationCardVerificationStatusType;
//  String refreeRecommendationforFamilyType;
//  String selectOperatorType;
//  String selectKPFMemberType;
//  String selectBenType;
//  String deliveryReasonType;
//  String cnfAddress;
//  String cnfPincode;
//  String selectOthersBenif;
//  String sponcersVal;
//  String hintAddress;
//  String hintPincode;
//
//  String kPFValue;
//  String socialMedia;
//  String advertisement;
//  String Others;
//  String friends;
//  String otherBenificiary;
//  String sponsors;
//
//
//
//
//  static const selectKpfNameType = <String>[
//    "Anil Gupta",
//    "Amit Nagrath",
//    "Anoop Dwivedi",
//    "Arvind Kumar",
//    "ASIF Syed Asif Ali Ji",
//    "Bhoopendra Sood",
//    "Capt. S.C. Tripathi	",
//    "Chandni Kanodia",
//    "Col R.K. Dixit",
//    "Devendra Pareek",
//    "Faiz Khalid",
//    "Gagan Gupta",
//    "Gaurang Garg	",
//    "Manju Saraf",
//    "Mudit Pradhan",
//    "Naveeta Gupta",
//    "PAMMI Mehmood Hussain Pammi",
//    "Pankhuri",
//    "Pradeep Khattri",
//    "R.K. Tiwari ",
//    "Rajeev Mansharamani",
//    "Rajendra Pal Singh ",
//    "Rajesh Grover",
//    "Rajesh Srivastava",
//    "Renu Gupta	",
//    "Renu Shah",
//    "Rita Singh",
//    "S.K. Gupta",
//    "Sandeep Jain",
//    "Sanjeev Malhotra	",
//    "Sudhanshu Shukla	",
//    "Sunakshi Khanna	",
//    "Vikas Agarwal	"
//
//  ];
//
//
//  static const selectKpfName2Type = <String>[
//    "Anil Gupta",
//    "Amit Nagrath",
//    "Anoop Dwivedi",
//    "Arvind Kumar",
//    "ASIF Syed Asif Ali Ji",
//    "Bhoopendra Sood",
//    "Capt. S.C. Tripathi	",
//    "Chandni Kanodia",
//    "Col R.K. Dixit",
//    "Devendra Pareek",
//    "Faiz Khalid",
//    "Gagan Gupta",
//    "Gaurang Garg	",
//    "Manju Saraf",
//    "Mudit Pradhan",
//    "Naveeta Gupta",
//    "PAMMI Mehmood Hussain Pammi",
//    "Pankhuri",
//    "Pradeep Khattri",
//    "R.K. Tiwari ",
//    "Rajeev Mansharamani",
//    "Rajendra Pal Singh ",
//    "Rajesh Grover",
//    "Rajesh Srivastava",
//    "Renu Gupta	",
//    "Renu Shah",
//    "Rita Singh",
//    "S.K. Gupta",
//    "Sandeep Jain",
//    "Sanjeev Malhotra	",
//    "Sudhanshu Shukla	",
//    "Sunakshi Khanna	",
//    "Vikas Agarwal	"
//
//  ];
//
//  static const formType = <String>[
//    "Myself",
//    "Others"
//  ];
//
//  static const sponcerType = <String>[
//    "Prachi Exports",
//  ];
//
//  static const notGettingRationReasonType = <String>[
//    "card banwaya nahi",
//    "apply kiya hua hai",
//    "card expire ho gaya",
//    "kisi aur jagah se hai",
//    "kotedar ration nahi deta",
//    "Others"
//  ];
//
//
//  static const aadharAvailability = <String>[
//    "Yes",
//    "No"
//  ];
//
//  static const selectionType = <String>[
//    "Selected ",
//    "Rejected"
//  ];
//
//
//  static const aadharVerificationStatus = <String>[
//    " Verified",
//    "Not Verified",
//    "data unavailable",
//  ];
//
//  static const rationCardVerificationStatus = <String>[
//    " Verified",
//    "Not Verified",
//    "Data Unavailable",
//  ];
//
//
//  static const refreeRecommendationforFamily = <String>[
//    "Correct Information",
//    "In-Correct Information",
//    "I don't know the person",
//    "I don't have sufficient knowledge"
//  ];
//
//
//  static const selectOperator = <String>[
//    "Provide ration",
//    "Not-suitable",
//    "Referee verification required",
//    "Can’t decide"
//  ];
//
//  static const selectKPFMember = <String>[
//    "Provide ration",
//    "Not-suitable",
//  ];
//
//
//  static const deliveryReason = <String>[
//    "Address not found",
//    "OTP Mismatch",
//    "House Locked",
//    "Benificiary not Present",
//    "ID not produced"
//  ];
//
//  DateTime sdate, eDate;
//  String selectedDate =
//      "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}";
//  final TextEditingController startDateController = TextEditingController();
//
//  String recommendDate =
//      "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}";
//  final TextEditingController recommendDateController = TextEditingController();
//
//  final List<DropdownMenuItem<String>> _dropDowndeliveryReasonItems = deliveryReason
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownSponcerNameItems = sponcerType
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//
////  deliveryReason
//
//  final List<DropdownMenuItem<String>> _dropDownKpfNameTypeItems = selectKpfNameType
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownKpfNameType2Items = selectKpfName2Type
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownSymptomsItems = formType
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//
//  final List<DropdownMenuItem<String>> _dropDownAadharCardItems = aadharAvailability
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownSelectionItems = selectionType
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
////  selectBenType
//
//  final List<DropdownMenuItem<String>> _dropDownAadharCardVerificationStatusItems = aadharVerificationStatus
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownRationCardVerificationStatusItems = rationCardVerificationStatus
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownrefreeRecommendationforFamilyItems = refreeRecommendationforFamily
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownselectOperatorItems = selectOperator
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownselectKPFMemberItems = selectKPFMember
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//  final List<DropdownMenuItem<String>> _dropDownreasonNotGettingRationItems = notGettingRationReasonType
//      .map((String value) =>
//      DropdownMenuItem<String>(value: value, child: Text(value)))
//      .toList();
//
//
////  reasonNotGettingRationType
//
//  Future<Null> _selectStartDate(BuildContext context) async {
//    final DateTime picked = await showDatePicker(
//        context: context,
//        initialDate: DateTime.now(),
//        firstDate: DateTime(1947, 8),
//        lastDate: DateTime(2100));
//    if (picked != null && picked != selectedDate) sdate = picked;
//    setState(() {
//      selectedDate = "${picked.year}-${picked.month}-${picked.day}";
//      startDateController.text = selectedDate;
//    });
//  }
//
//
//  Future<Null> _selectRecommendDate(BuildContext context) async {
//    final DateTime picked = await showDatePicker(
//        context: context,
//        initialDate: DateTime.now(),
//        firstDate: DateTime(1947, 8),
//        lastDate: DateTime(2100));
//    if (picked != null && picked != recommendDate) eDate = picked;
//    setState(() {
//      recommendDate = "${picked.year}-${picked.month}-${picked.day}";
//      recommendDateController.text = recommendDate;
//    });
//  }
//
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    verificaion2 = false;
//    verification3 = false;
//    call2dateOfRationDeliveredTextController.text = "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}";
//    call2dateOfRemarkbyKPFTextController.text = "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}";
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      appBar: PreferredSize(
//        preferredSize: Size.fromHeight(100.0,),
//        child: AppBar(
//          centerTitle: true,
//          title: Text("Campaign Form ", style:  TextStyle(
//            fontSize: 24.0,
//            fontWeight: FontWeight.bold,
//          ),),
//          backgroundColor: hexToColor('#2980B9'),
//          shape: ContinuousRectangleBorder(
//            borderRadius: BorderRadius.only(
//                bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100)),),
//          actions: [
//            new IconButton(icon: Icon(Icons.home), onPressed: (){
//              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Dashboard()));
//            })
//
//          ],
//        ),
//      ),
//      body: GestureDetector(
//        onTap: (){
//          // call this method here to hide soft keyboard
//          FocusScope.of(context).requestFocus(new FocusNode());
//        },
//        child: SingleChildScrollView(
//          child: Column(
//            children: <Widget>[
//
//              Column(
//                children: <Widget>[
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Container(
//                        height: 50,
//                        child: Padding(
//                            padding: EdgeInsets.fromLTRB(0,0,0,0),
//                            child: Center(
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.center,
//                                children: <Widget>[
//
//                                  Container(
//                                    color:  hexToColor('#2980B9'),
//                                    padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                    child: Text('A. Campaign Details',
//                                      style: TextStyle(color: Colors.white,
//                                          fontSize: 20.0,
//                                          fontWeight: FontWeight.bold),),
//                                  ),
//                                  Spacer(),
//                                  Padding(
//                                    padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                    child: Icon(
//                                      Icons.arrow_drop_down_circle,
//                                      color:Colors.white,
//                                      size: 30,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            )
//                        )),
//                  ),
//                  Container(
//                    child: Column(
//                      children: <Widget>[
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Padding(
//                                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                child: Text("1. Namskar Sir! May I know your name? ",
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold
//                                  ),),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(16.0),
//                          child: Container(
//                            padding: EdgeInsets.symmetric(horizontal: 24),
//                            height: 50,
//                            decoration: BoxDecoration(
//                                border: Border.all(color: Colors.black),
//                                color: Colors.white,
//                                borderRadius: BorderRadius.circular(18)),
//                            child: TextField(
//                              controller: nameController,
//                              decoration: InputDecoration(
//                                border: InputBorder.none,
//                                prefixIcon: Icon(
//                                  Icons.person,
//                                  color: Colors.teal,
//                                ),
//                                hintText: 'Your Name',
//                                //fillColor: Color(0xffEFEFEF),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Center(
//                            child: Padding(
//                              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                              child: Text("2. How did you know about this Campaign?",
//                                style: TextStyle(
//                                    fontSize: 16.0,
//                                    fontWeight: FontWeight.bold
//                                ),),
//                            )),
//                        Padding(
//                          padding: const EdgeInsets.all(4.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Checkbox(
//                                value: kpfVal,
//                                onChanged: (bool value) {
//                                  setState(() {
//                                    kpfVal = value;
//                                    spncrVal = false;
//                                    kPFValue = "KPF";
//                                  });
//                                },
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text("KPF Member" ,
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold
//                                  ),
//                                ),
//                              ),
//                              SizedBox(
//                                width: 30.0,
//                              ),
//
//
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(4.0),
//                          child: Container(
//                            padding: EdgeInsets.symmetric(horizontal: 24),
//                            height: 50,
//                            decoration: BoxDecoration(
//                                border: Border.all(color: Colors.black),
//                                color: Colors.white,
//                                borderRadius: BorderRadius.circular(14)),
//                            child: DropdownButtonHideUnderline(
//                              child: Row(
//                                children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                  SizedBox(
//                                    width: 20,
//                                  ),
//                                  Expanded(
//                                    child: DropdownButton<String>(
//                                      hint: Text("-- Select --", style: TextStyle(color: Colors.black),),
//                                      isExpanded: true,
//                                      value: KpfNameType,
////                              _currentSelectedType,
//                                      isDense: true,
//                                      onChanged: (String newValue) {
//                                        setState(() {
//                                          KpfNameType= newValue;
////                            state.didChange(newValue);
//                                        });
//                                      },
//                                      items: this._dropDownKpfNameTypeItems,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//
//                        Padding(
//                          padding: const EdgeInsets.all(4.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Checkbox(
//                                value: spncrVal,
//                                onChanged: (bool value) {
//                                  setState(() {
//                                    spncrVal = value;
//                                    kpfVal = false;
//                                    sponsors = "SPONSORS";
//
//                                  });
//                                },
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text(" Sponsors" ,
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold
//                                  ),
//                                ),
//                              ),
//                              SizedBox(
//                                width: 30.0,
//                              ),
//
//
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(4.0),
//                          child: Container(
//                            padding: EdgeInsets.symmetric(horizontal: 24),
//                            height: 50,
//                            decoration: BoxDecoration(
//                                border: Border.all(color: Colors.black),
//                                color: Colors.white,
//                                borderRadius: BorderRadius.circular(14)),
//                            child: DropdownButtonHideUnderline(
//                              child: Row(
//                                children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                  SizedBox(
//                                    width: 20,
//                                  ),
//                                  Expanded(
//                                    child: DropdownButton<String>(
//                                      hint: Text("-- Select --", style: TextStyle(color: Colors.black),),
//                                      isExpanded: true,
//                                      value: sponcersVal,
////                              _currentSelectedType,
//                                      isDense: true,
//                                      onChanged: (String newValue) {
//                                        setState(() {
//                                          sponcersVal= newValue;
////                            state.didChange(newValue);
//                                        });
//                                      },
//                                      items: this._dropDownSponcerNameItems,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.only(left :4.0,right :19.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Checkbox(
//                                value: friendsVal,
//                                onChanged: (bool value) {
//                                  setState(() {
//                                    friendsVal = value;
//                                    friends = "Friends";
//
//                                  });
//                                },
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text("Friends",
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.only(left :4.0,right :19.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Checkbox(
//                                value: socialVal,
//                                onChanged: (bool value) {
//                                  setState(() {
//                                    socialVal = value;
//                                    socialMedia = "Social Media" ;
//                                  });
//                                },
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text("Social Media",
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(4.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Checkbox(
//                                value: advertisementVal,
//                                onChanged: (bool value) {
//                                  setState(() {
//                                    advertisementVal = value;
//                                    advertisement = "ADEVERTISEMENT";
//
//                                  });
//                                },
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text("Advertisements",
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold
//                                  ),
//                                ),
//                              ),
////                  SizedBox(
////                    width: 20.0,
////                  ),
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.only(left :4, right :5.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Checkbox(
//                                value: otherBenificiaryVal,
//                                onChanged: (bool value) {
//                                  setState(() {
//                                    otherBenificiaryVal = value;
//                                    otherBenificiary = "OTHER_BENIFICIARY";
//
//                                  });
//                                },
//                              ),
//                              Text("Other Benificiary",
//                                style: TextStyle(
//                                    fontSize: 16.0,
//                                    fontWeight: FontWeight.bold
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.only(right :8.0, left :4.0),
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Checkbox(
//                                value: othersVal,
//                                onChanged: (bool value) {
//                                  setState(() {
//                                    othersVal = value;
//                                    Others = "OTHERS";
//
//                                  });
//                                },
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text("Others ",
//                                  style: TextStyle(
//                                      fontSize: 16.0,
//                                      fontWeight: FontWeight.bold
//                                  ),
//                                ),
//                              ),
//                              SizedBox(
//                                width: 30.0,
//                              ),
//                              Expanded(
//                                child: TextField(
//                                  controller: camp_other_textController,
////                            obscureText: true,
//                                  decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                    labelText: '  Specify Others..',
//                                    hintText: '   Member 1',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                  ),
//                                ),
//                              ),
//                              SizedBox(
//                                width: 20.0,
//                              ),
//                            ],
//                          ),
//                        ),
//                        Center(
//                            child: Padding(
//                              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                              child: Text("3. Do you want ration for yourself or\nOthers?",
//                                style: TextStyle(
//                                    fontSize: 16.0,
//                                    fontWeight: FontWeight.bold
//                                ),),
//                            )),
//                        SizedBox(
//                          width: 20,
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(16.0),
//                          child: Container(
//                            padding: EdgeInsets.symmetric(horizontal: 24),
//                            height: 50,
//                            decoration: BoxDecoration(
//                                color: Colors.white,
//                                borderRadius: BorderRadius.circular(14)),
//                            child: DropdownButtonHideUnderline(
//                              child: Row(
//                                children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                  SizedBox(
//                                    width: 20,
//                                  ),
//                                  Expanded(
//                                    child: DropdownButton<String>(
//                                      hint: Text("Select Benificiary", style: TextStyle(color: Colors.black),),
//                                      isExpanded: true,
//                                      value: benificiaryType,
////                              _currentSelectedType,
//                                      isDense: true,
//                                      onChanged: (String newValue) {
//                                        setState(() {
//                                          benificiaryType= newValue;
//                                          if(benificiaryType != "Others"){
//                                            verificaion2 = true;
//                                            verification3 = true;
////                                              verificaion2 = true;
////                                              verification3 = true;
//                                          }else{
//                                            verificaion2 = false;
//                                            verification3 = false;
//                                          }
////                                      state.didChange(newValue);
//                                        });
//                                      },
//                                      items: this._dropDownSymptomsItems,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          child: Column(
//                            children: <Widget>[
//                              Center(
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                    child: Text("4. What's your age?",
//                                      style: TextStyle(
//                                          fontSize: 16.0,
//                                          fontWeight: FontWeight.bold
//                                      ),),
//                                  )),
//                              Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Container(
//                                  padding: EdgeInsets.symmetric(horizontal: 24),
//                                  height: 50,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.black),
//                                      color: Colors.white,
//                                      borderRadius: BorderRadius.circular(18)),
//                                  child: TextField(
//
//                                    onChanged: (String value){
//                                      if(age <= int.parse(camp_age_textController.text)){
//                                        print(camp_age_textController.text);
////                                            verificaion2 = true;
//                                        verification3 = true;
//                                      }else{
//                                        verificaion2 = false;
//                                        verification3 = false;
//                                      }
//                                    },
//                                    keyboardType: TextInputType.numberWithOptions(),
//                                    keyboardAppearance: Brightness.dark,
//                                    inputFormatters: [
//                                      LengthLimitingTextInputFormatter(10),
//                                    ],
//                                    controller: camp_age_textController,
//                                    decoration: InputDecoration(
//                                      border: InputBorder.none,
//                                      prefixIcon: Icon(
//                                        Icons.format_list_numbered,
//                                        color: Colors.teal,
//                                      ),
//                                      hintText: 'Type Age',
//                                      //fillColor: Color(0xffEFEFEF),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                          child: Text(" Aap Kya kaam karte ho ?",
//                            style: TextStyle(
//                                fontSize: 16.0,
//                                fontWeight: FontWeight.bold
//                            ),),
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(16.0),
//                          child: Container(
//                            padding: EdgeInsets.symmetric(horizontal: 24),
//                            height: 100,
//                            decoration: BoxDecoration(
//                                border: Border.all(color: Colors.black),
//                                color: Colors.white,
//                                borderRadius: BorderRadius.circular(18)),
//                            child: TextField(
//                              controller: benRemarksforCall1TextController,
//                              maxLines: 10,
//                              decoration: InputDecoration(
//                                border: InputBorder.none,
//                                prefixIcon: Icon(
//                                  Icons.description,
//                                  color: Colors.teal,
//                                ),
//                                hintText: 'Type Remarks here...',
//                                //fillColor: Color(0xffEFEFEF),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          children: <Widget>[
//                            Checkbox(
//                              value: verifiedForCall2Val,
//                              onChanged: (bool value) {
//                                setState(() {
//                                  verifiedForCall2Val = value;
//                                });
//                              },
//                            ),
//                            Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Text("Verified For Call 2",
//                                style: TextStyle(
//                                    fontSize: 16.0,
//                                    fontWeight: FontWeight.bold
//                                ),
//                              ),
//                            ),
//
//
//                          ],
//                        ),
////                        Center(
////                          child: Padding(
////                            padding: const EdgeInsets.all(8.0),
////                            child: Container(
////                              height: 50.0,
////                              padding:  EdgeInsets.symmetric(horizontal: 16.0),
////                              width: double.infinity,
////                              child: RaisedButton(
////                                shape: RoundedRectangleBorder(
////                                    borderRadius: BorderRadius.circular(18.0),
////                                    side: BorderSide(color: Colors.black)
////                                ),
////                                hoverColor: Colors.blueGrey,
////                                padding: EdgeInsets.symmetric(horizontal: 14.0),
////                                elevation: 5.0,
////                                color: Colors.teal,
////                                onPressed: () {
////
////                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> CampaignCallOne()));
////                                },
////                                child: Text("Submit",
////                                  style: TextStyle(
////                                      color: Colors.white
////                                  ),),
////                              ),
////                            ),
////                          ),
////                        ),
//                      ],
//                    ),
//                  )
//                ],
//              ),
//
//              Container(
//                child: Column(
//                  children: <Widget>[
//
//                    Column(
//                      children: <Widget>[
//                        Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Container(
//                              height: 50,
//                              child: Padding(
//                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                  child: Center(
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.center,
//                                      children: <Widget>[
//
//                                        Container(
//                                          color:  hexToColor('#2980B9'),
//                                          padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                          child: Text('B. Address',
//                                            style: TextStyle(color: Colors.white,
//                                                fontSize: 17.0,
//                                                fontWeight: FontWeight.bold),),
//                                        ),
//                                        Spacer(),
//                                        Padding(
//                                          padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                          child: Icon(
//                                            Icons.arrow_drop_down_circle,
//                                            color:Colors.white,
//                                            size: 30,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  )
//                              )),
//                        ),
//                        Container(
//                          child: Column(
//                            children: <Widget>[
//                              Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Container(
//                                  padding: EdgeInsets.symmetric(horizontal: 24),
//                                  height: 50,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.black),
//                                      color: Colors.white,
//                                      borderRadius: BorderRadius.circular(18)),
//                                  child: TextField(
//                                    controller: benHouseNoTextController,
//                                    onChanged: (String value){
//                                    },
//                                    autofocus: false,
//                                    decoration: InputDecoration(
//                                      border: InputBorder.none,
//                                      prefixIcon: Icon(
//                                        Icons.home,
//                                        color: Colors.teal,
//                                      ),
//                                      hintText: '5. Flat/House No ',
//                                      //fillColor: Color(0xffEFEFEF),
//                                    ),
//                                  ),
//                                ),
//                              ),// house/flat no
//                              Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Container(
//                                  padding: EdgeInsets.symmetric(horizontal: 24),
//                                  height: 50,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.black),
//                                      color: Colors.white,
//                                      borderRadius: BorderRadius.circular(18)),
//                                  child: TextField(
//                                    controller: benStreetTextController,
//                                    onChanged: (String val){
//
//                                    },
//                                    autofocus: false,
//                                    decoration: InputDecoration(
//                                      border: InputBorder.none,
//                                      prefixIcon: Icon(
//                                        Icons.location_city,
//                                        color: Colors.teal,
//                                      ),
//                                      hintText: '6. Street/Road',
//                                      //fillColor: Color(0xffEFEFEF),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Container(
//                                  padding: EdgeInsets.symmetric(horizontal: 24),
//                                  height: 50,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.black),
//                                      color: Colors.white,
//                                      borderRadius: BorderRadius.circular(18)),
//                                  child: TextField(
//                                    controller: benLandMarkTextController,
//                                    onChanged : (String value){
//
//                                    },
//                                    autofocus: false,
//                                    decoration: InputDecoration(
//                                      border: InputBorder.none,
//                                      prefixIcon: Icon(
//                                        Icons.pin_drop,
//                                        color: Colors.teal,
//                                      ),
//                                      hintText: ' 7. Landmark',
//                                      //fillColor: Color(0xffEFEFEF),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Container(
//                                  padding: EdgeInsets.symmetric(horizontal: 24),
//                                  height: 50,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.black),
//                                      color: Colors.white,
//                                      borderRadius: BorderRadius.circular(18)),
//                                  child: TextField(
//                                    controller: benLocalityTextController,
//                                    onChanged : (String value ){
//
//                                    },
//                                    decoration: InputDecoration(
//                                      border: InputBorder.none,
//                                      prefixIcon: Icon(
//                                        Icons.location_city,
//                                        color: Colors.teal,
//                                      ),
//                                      hintText: '8. Locality/Mohalla/Area ',
//                                      //fillColor: Color(0xffEFEFEF),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Container(
//                                  padding: EdgeInsets.symmetric(horizontal: 24),
//                                  height: 50,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.black),
//                                      color: Colors.white,
//                                      borderRadius: BorderRadius.circular(18)),
//                                  child: TextField(
//                                    keyboardType: TextInputType.numberWithOptions(),
//                                    keyboardAppearance: Brightness.dark,
//                                    inputFormatters: [
//                                      LengthLimitingTextInputFormatter(6),
//                                    ],
//                                    controller: benPincodeTextController,
//                                    onChanged : (String value) {
//                                      hintPincode = value +" ";
//                                    },
//                                    decoration: InputDecoration(
//                                      border: InputBorder.none,
//                                      prefixIcon: Icon(
//                                        Icons.local_post_office,
//                                        color: Colors.teal,
//                                      ),
//                                      hintText: '9.Pincode',
//                                      //fillColor: Color(0xffEFEFEF),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                              Center(
//                                  child: Padding(
//                                    padding: const EdgeInsets.only( left: 10, right: 10),
//                                    child: Text("10. Is your Home address lies in HotZone or Containment?",
//                                      style: TextStyle(
//                                          fontSize: 16.0,
//                                          fontWeight: FontWeight.bold
//                                      ),),
//                                  )),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Row(
//                                  mainAxisAlignment: MainAxisAlignment.center,
//                                  children: <Widget>[
//                                    Checkbox(
//                                      value: hotZoneYesVal,
//                                      onChanged: (bool value) {
//                                        setState(() {
//                                          hotZoneYesVal = value;
//                                          hotZoneNoVal = false;
//                                          hotZoneOtherVal = false;
//                                          verification3 = false;
//
//
//                                        });
//                                      },
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.all(4.0),
//                                      child: Text("Yes",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),
//                                      ),
//                                    ),
//
//                                    Padding(
//                                      padding: const EdgeInsets.only(right :4.0),
//                                      child: Row(
//                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                        children: <Widget>[
//                                          Checkbox(
//                                            value: hotZoneNoVal,
//                                            onChanged: (bool value) {
//                                              setState(() {
//                                                hotZoneNoVal = value;
//                                                hotZoneYesVal = false;
//                                                hotZoneOtherVal = false;
//                                                verification3 =  true;
//                                              });
//                                            },
//                                          ),
//                                          Padding(
//                                            padding: const EdgeInsets.all(4.0),
//                                            child: Text("No",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(right :19.0),
//                                      child: Row(
//                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                        children: <Widget>[
//                                          Checkbox(
//                                            value: hotZoneOtherVal,
//                                            onChanged: (bool value) {
//                                              setState(() {
//                                                hotZoneOtherVal = value;
//                                                hotZoneNoVal = false;
//                                                hotZoneYesVal = false;
//                                                verification3 = true;
//                                              });
//                                            },
//                                          ),
//                                          Padding(
//                                            padding: const EdgeInsets.all(4.0),
//                                            child: Text("Don't Know",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
////                                   Center(
////                                       child: Padding(
////                                         padding: const EdgeInsets.only( left: 10, right: 10),
////                                         child: Text(" 11. Is your address  outside from the  Kanpur Nagar Nigam?",
////                                           style: TextStyle(
////                                               fontSize: 16.0,
////                                               fontWeight: FontWeight.bold
////                                           ),),
////                                       )),
//                              Visibility(
//                                visible: false,
//                                child: Padding(
//                                  padding: const EdgeInsets.all(4.0),
//                                  child: Row(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    children: <Widget>[
//                                      Checkbox(
//                                        value: areaUnderNagarNYesVal,
//                                        onChanged: (bool value) {
//                                          setState(() {
//                                            areaUnderNagarNYesVal = value;
//                                            areaUnderNagarNiNoVal = false;
//                                            areaUnderNagarNiOtherVal = false;
//                                            verification3 = false;
//
//                                          });
//                                        },
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(4.0),
//                                        child: Text("Yes",
//                                          style: TextStyle(
//                                              fontSize: 16.0,
//                                              fontWeight: FontWeight.bold
//                                          ),
//                                        ),
//                                      ),
//
//                                      Padding(
//                                        padding: const EdgeInsets.only(right :4.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.start,
//                                          children: <Widget>[
//                                            Checkbox(
//                                              value: areaUnderNagarNiNoVal,
//                                              onChanged: (bool value) {
//                                                setState(() {
//                                                  areaUnderNagarNiNoVal = value;
//                                                  areaUnderNagarNYesVal = false;
//                                                  areaUnderNagarNiOtherVal = false;
//                                                  verification3 = true;
//
//                                                });
//                                              },
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(4.0),
//                                              child: Text("No",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(right :4.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.start,
//                                          children: <Widget>[
//                                            Checkbox(
//                                              value: areaUnderNagarNiOtherVal,
//                                              onChanged: (bool value) {
//                                                setState(() {
//                                                  areaUnderNagarNiOtherVal = value;
//                                                  areaUnderNagarNYesVal = false;
//                                                  areaUnderNagarNiNoVal = false;
//                                                  verification3 = true;
//                                                });
//                                              },
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(4.0),
//                                              child: Text("Don't Know",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  children: <Widget>[
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 10, right: 10),
//                                      child: Text("12. Please give us your personal contact\n\t\t\t\t\t number so that we can call you back ",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Container(
//                                  padding: EdgeInsets.symmetric(horizontal: 24),
//                                  height: 50,
//                                  decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.black),
//                                      color: Colors.white,
//                                      borderRadius: BorderRadius.circular(18)),
//                                  child: TextField(
//                                    keyboardType: TextInputType.numberWithOptions(),
//                                    keyboardAppearance: Brightness.dark,
//                                    inputFormatters: [
//                                      LengthLimitingTextInputFormatter(10),
//                                    ],
//                                    controller: benContactNumberTextController,
//                                    decoration: InputDecoration(
//                                      border: InputBorder.none,
//                                      prefixIcon: Icon(
//                                        Icons.person,
//                                        color: Colors.teal,
//                                      ),
//                                      hintText: ' Contact Number',
//                                      //fillColor: Color(0xffEFEFEF),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//
//                  ],
//                ),
//              ),
//
//              Visibility(
//                visible: false,
//                child: Container(
//                  child: Column(
//                    children: <Widget>[
//                      Column(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(
//                                height: 50,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                                    onPressed: ()=>setState((){
//                                      _animatedConfirmationHeight!=0.0 ? _animatedConfirmationHeight=0.0:_animatedConfirmationHeight=600.0;}),
//                                    textColor: Colors.white,
//                                    color:  hexToColor('#2980B9'),
//                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                    child: Padding(
//                                        padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                        child: Center(
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.center,
//                                            children: <Widget>[
//
//                                              Container(
//                                                color:  hexToColor('#2980B9'),
//                                                padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                                child: Text('C. Confirmation',
//                                                  style: TextStyle(color: Colors.white,
//                                                      fontSize: 16.0,
//                                                      fontWeight: FontWeight.bold),),
//                                              ),
//                                              Spacer(),
//                                              Padding(
//                                                padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                                child: Icon(
//                                                  Icons.arrow_drop_down_circle,
//                                                  color:Colors.white,
//                                                  size: 30,
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        )
//                                    )
//                                )),
//                          ),
//                          AnimatedContainer( duration: const Duration(milliseconds: 120),
//                            child: Container(
//                              child: Column(
//                                children: <Widget>[
//                                  Padding(
//                                    padding: const EdgeInsets.all(8.0),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.start,
//                                      children: <Widget>[
//                                        Padding(
//                                          padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                          child: Text("13. Please tell us your address for \n\t\t\t\t\t confirmation ",
//                                            style: TextStyle(
//                                                fontSize: 16.0,
//                                                fontWeight: FontWeight.bold
//                                            ),),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Padding(
//                                    padding: const EdgeInsets.all(16.0),
//                                    child: Container(
//                                      padding: EdgeInsets.symmetric(horizontal: 24),
//                                      height: 50,
//                                      decoration: BoxDecoration(
//                                          border: Border.all(color: Colors.black),
//                                          color: Colors.white,
//                                          borderRadius: BorderRadius.circular(18)),
//                                      child: TextField(
//                                        onTap: (){
//                                          setState(() {
//                                            hintAddress = benHouseNoTextController.text.toString().trim()+ " "
//                                                +benLocalityTextController.text.toString().trim()+ " "
//                                                +benLandMarkTextController.text.toString().trim()+ " "
//                                                +benCityTextController.text.toString().trim()+ " " ;
//                                          });
//
//
//                                        },
//                                        controller: call2ConfirmAddressTextController,
//                                        autofocus : false,
//                                        decoration: InputDecoration(
//                                          border: InputBorder.none,
//                                          prefixIcon: Icon(
//                                            Icons.person,
//                                            color: Colors.teal,
//                                          ),
//                                          hintText: 'Address',
//                                          //fillColor: Color(0xffEFEFEF),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                  Row(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    children: <Widget>[
//                                      Text(' Hint : ${hintAddress== null ? "" : hintAddress}',
//
//                                        style: TextStyle(color: Colors.black,
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.w300),),
//                                    ],
//                                  ),
//                                  Padding(
//                                    padding: const EdgeInsets.all(8.0),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.start,
//                                      children: <Widget>[
//                                        Padding(
//                                          padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                          child: Text("14. Please tell us your pincode for\n\t\t\t\t\t confirmation ",
//                                            style: TextStyle(
//                                                fontSize: 16.0,
//                                                fontWeight: FontWeight.bold
//                                            ),),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Padding(
//                                    padding: const EdgeInsets.all(16.0),
//                                    child: Container(
//                                      padding: EdgeInsets.symmetric(horizontal: 24),
//                                      height: 50,
//                                      decoration: BoxDecoration(
//                                          border: Border.all(color: Colors.black),
//                                          color: Colors.white,
//                                          borderRadius: BorderRadius.circular(18)),
//                                      child: TextField(
//                                        controller: call2ConfirmPincodeTextController,
//                                        autofocus : false,
//                                        decoration: InputDecoration(
//                                          border: InputBorder.none,
//                                          prefixIcon: Icon(
//                                            Icons.person,
//                                            color: Colors.teal,
//                                          ),
//                                          hintText: 'Pincode',
//                                          //fillColor: Color(0xffEFEFEF),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                  Row(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    children: <Widget>[
//                                      Text(' Hint: ${hintPincode == null ? "" : hintPincode}',
//                                        style: TextStyle(color: Colors.black,
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.w300),),
//                                    ],
//                                  ),
//                                  Center(
//                                      child: Padding(
//                                        padding: const EdgeInsets.only( left: 10, right: 10, top: 15.0),
//                                        child: Text("15. Is this same Address as given in call 1?",
//                                          style: TextStyle(
//                                              fontSize: 16.0,
//                                              fontWeight: FontWeight.bold
//                                          ),),
//                                      )),
//                                  Padding(
//                                    padding: const EdgeInsets.all(8.0),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.center,
//                                      children: <Widget>[
//                                        Padding(
//                                          padding: const EdgeInsets.only(right :19.0),
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Checkbox(
//                                                value: adMisMatchYesVal,
//                                                onChanged: (bool value) {
//                                                  setState(() {
//                                                    adMisMatchYesVal = value;
//                                                    adMisMatchNoVal = false;
//
//                                                  });
//                                                },
//                                              ),
//                                              Padding(
//                                                padding: const EdgeInsets.all(8.0),
//                                                child: Text("Yes",
//                                                  style: TextStyle(
//                                                      fontSize: 16.0,
//                                                      fontWeight: FontWeight.bold
//                                                  ),
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//
//                                        Padding(
//                                          padding: const EdgeInsets.only(right :19.0),
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Checkbox(
//                                                value: adMisMatchNoVal,
//                                                onChanged: (bool value) {
//                                                  setState(() {
//                                                    adMisMatchNoVal = value;
//                                                    adMisMatchYesVal = false;
//
//                                                  });
//                                                },
//                                              ),
//                                              Padding(
//                                                padding: const EdgeInsets.all(8.0),
//                                                child: Text("No",
//                                                  style: TextStyle(
//                                                      fontSize: 16.0,
//                                                      fontWeight: FontWeight.bold
//                                                  ),
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Padding(
//                                    padding: const EdgeInsets.all(8.0),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.start,
//                                      children: <Widget>[
//                                        Padding(
//                                          padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                          child: Text("16. Reason for mismatch ",
//                                            style: TextStyle(
//                                                fontSize: 16.0,
//                                                fontWeight: FontWeight.bold
//                                            ),),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Padding(
//                                    padding: const EdgeInsets.all(16.0),
//                                    child: Container(
//                                      padding: EdgeInsets.symmetric(horizontal: 24),
//                                      height: 50,
//                                      decoration: BoxDecoration(
//                                          border: Border.all(color: Colors.black),
//                                          color: Colors.white,
//                                          borderRadius: BorderRadius.circular(18)),
//                                      child: TextField(
//                                        controller: call2ReasonMismatchTextController,
//                                        decoration: InputDecoration(
//                                          border: InputBorder.none,
//                                          prefixIcon: Icon(
//                                            Icons.person,
//                                            color: Colors.teal,
//                                          ),
//                                          hintText: 'type reason here...',
//                                          //fillColor: Color(0xffEFEFEF),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            height: _animatedConfirmationHeight,
//                            color: hexToColor('#c9dfed'),
//                          )
//                        ],
//                      ),
//                      Column(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(
//                                height: 50,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                                    onPressed: ()=>setState((){
//                                      _animatedAadharHeight!=0.0?_animatedAadharHeight=0.0:_animatedAadharHeight=400.0;}),
//                                    textColor: Colors.white,
//                                    color:  hexToColor('#2980B9'),
//                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                    child: Padding(
//                                        padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                        child: Center(
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.center,
//                                            children: <Widget>[
//
//                                              Container(
//                                                color:  hexToColor('#2980B9'),
//                                                padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                                child: Text('D. Aadhar Card',
//                                                  style: TextStyle(color: Colors.white,
//                                                      fontSize: 17.0,
//                                                      fontWeight: FontWeight.bold),),
//                                              ),
//                                              Spacer(),
//                                              Padding(
//                                                padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                                child: Icon(
//                                                  Icons.arrow_drop_down_circle,
//                                                  color:Colors.white,
//                                                  size: 30,
//                                                ),
//                                              ),
//
//                                            ],
//                                          ),
//                                        )
//                                    )
//                                )),
//                          ),
//                          AnimatedContainer( duration: const Duration(milliseconds: 120),
//                            child: Container(
//                                child: Column(
//                                  children: <Widget>[
//                                    Padding(
//                                      padding: const EdgeInsets.only(left:8.0),
//                                      child: Row(
//                                        mainAxisAlignment: MainAxisAlignment.start,
//                                        children: <Widget>[
//                                          Padding(
//                                            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                            child: Text("17. Do you have Aadhar card? ",
//                                              style: TextStyle(
//                                                  fontSize: 18.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                          ),
//
//                                        ],
//                                      ),
//                                    ),
//                                    SizedBox(
//                                      width: 20,
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.all(16.0),
//                                      child: Container(
//                                        padding: EdgeInsets.symmetric(horizontal: 24),
//                                        height: 50,
//                                        decoration: BoxDecoration(
//                                            border: Border.all(color: Colors.black),
//                                            color: Colors.white,
//                                            borderRadius: BorderRadius.circular(14)),
//                                        child: DropdownButtonHideUnderline(
//                                          child: Row(
//                                            children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                              SizedBox(
//                                                width: 20,
//                                              ),
//                                              Expanded(
//                                                child: DropdownButton<String>(
//                                                  hint: Text("-- Select --", style: TextStyle(color: Colors.black),),
//                                                  isExpanded: true,
//                                                  value: aadhAvailabilityType,
////                              _currentSelectedType,
//                                                  isDense: true,
//                                                  onChanged: (String newValue) {
//                                                    setState(() {
//                                                      aadhAvailabilityType= newValue;
////                            state.didChange(newValue);
//                                                    });
//                                                  },
//                                                  items: this._dropDownAadharCardItems,
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.all(8.0),
//                                      child: Row(
//                                        mainAxisAlignment: MainAxisAlignment.start,
//                                        children: <Widget>[
//                                          Padding(
//                                            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                            child: Text("18. Aadhar Number ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.all(16.0),
//                                      child: Container(
//                                        padding: EdgeInsets.symmetric(horizontal: 24),
//                                        height: 50,
//                                        decoration: BoxDecoration(
//                                            border: Border.all(color: Colors.black),
//                                            color: Colors.white,
//                                            borderRadius: BorderRadius.circular(18)),
//                                        child: TextField(
//                                          keyboardType: TextInputType.number,
//                                          keyboardAppearance: Brightness.dark,
//                                          inputFormatters: [
//                                            LengthLimitingTextInputFormatter(12),
//                                            WhitelistingTextInputFormatter.digitsOnly
//                                          ],
//                                          controller: call2AadharNumberTextController,
//                                          decoration: InputDecoration(
//                                            border: InputBorder.none,
//                                            prefixIcon: Icon(
//                                              Icons.person,
//                                              color: Colors.teal,
//                                            ),
//                                            hintText: 'type here...',
////                                          errorText: call2AadharNumberTextController.text.toString().length != 12 ? 'please enter the 12 digit Adhar Number' : null,
//
//                                            //fillColor: Color(0xffEFEFEF),
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//
//                                  ],
//                                )
//                            ),
//                            height: _animatedAadharHeight,
//                            color: hexToColor('#c9dfed'),
//                          )
//                        ],
//                      ),
//                      Column(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(
//                                height: 50,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                                    onPressed: ()=>setState((){
//                                      _animatedRationDetailsHeight!=0.0?_animatedRationDetailsHeight=0.0:_animatedRationDetailsHeight=650.0;}),
//                                    textColor: Colors.white,
//                                    color:  hexToColor('#2980B9'),
//                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                    child: Padding(
//                                        padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                        child: Center(
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.center,
//                                            children: <Widget>[
//
//                                              Container(
//                                                color:  hexToColor('#2980B9'),
//                                                padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                                child: Text('E. Family Ration Details',
//                                                  style: TextStyle(color: Colors.white,
//                                                      fontSize: 17.0,
//                                                      fontWeight: FontWeight.bold),),
//                                              ),
//                                              Spacer(),
//                                              Padding(
//                                                padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                                child: Icon(
//                                                  Icons.arrow_drop_down_circle,
//                                                  color:Colors.white,
//                                                  size: 30,
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        )
//                                    )
//                                )),
//                          ),
//                          AnimatedContainer( duration: const Duration(milliseconds: 120),
//                            child: Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                  child: Column(
//                                    children: <Widget>[
//
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.start,
//                                          children: <Widget>[
//                                            Padding(
//                                              padding: const EdgeInsets.only( left:0.0, ),
//                                              child: Text("19. Are you getting ration?",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold,
//                                                    color: Colors.teal
//                                                ),),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left:8.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.start,
//                                          children: <Widget>[
//
//
//                                            Padding(
//                                              padding: const EdgeInsets.only(right :5.0),
//                                              child: Row(
//                                                mainAxisAlignment: MainAxisAlignment.start,
//                                                children: <Widget>[
//                                                  Checkbox(
//                                                    value: gettingRationYesVal,
//                                                    onChanged: (bool value) {
//                                                      setState(() {
//                                                        gettingRationYesVal = value;
//                                                        gettingRationNoVal  = false;
//                                                      });
//                                                    },
//                                                  ),
//                                                  Padding(
//                                                    padding: const EdgeInsets.only(left: 2.0),
//                                                    child: Text("Yes",
//                                                      style: TextStyle(
//                                                          fontSize: 16.0,
//                                                          fontWeight: FontWeight.bold
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//
//                                            Padding(
//                                              padding: const EdgeInsets.only(right :5.0),
//                                              child: Row(
//                                                mainAxisAlignment: MainAxisAlignment.start,
//                                                children: <Widget>[
//                                                  Checkbox(
//                                                    value: gettingRationNoVal,
//                                                    onChanged: (bool value) {
//                                                      setState(() {
//                                                        gettingRationNoVal = value;
//                                                        gettingRationYesVal  = false;
//                                                      });
//                                                    },
//                                                  ),
//                                                  Padding(
//                                                    padding: const EdgeInsets.all(8.0),
//                                                    child: Text("No",
//                                                      style: TextStyle(
//                                                          fontSize: 16.0,
//                                                          fontWeight: FontWeight.bold
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                      Visibility(
//                                        visible: gettingRationYesVal == true ? true: false,
//                                        child: Padding(
//                                          padding: const EdgeInsets.all(4.0),
//                                          child: Row(
//                                            children: <Widget>[
//                                              Text("20. If Yes Ration Card Unit ",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),),
//                                              SizedBox(
//                                                width: 20.0,
//                                              ),
//                                              Expanded(
//                                                child: TextField(
//                                                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
//                                                  controller: call2RationCardUnitTextController,
////                            obscureText: true,
//                                                  decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                    labelText: '  Type no of unit',
//                                                    hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                  ),
//                                                ),
//                                              ),
//
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                      Visibility(
//                                        visible: gettingRationNoVal == true ? true : false,
//                                        child: Column(
//                                          children: <Widget>[
//                                            Padding(
//                                              padding: const EdgeInsets.all(4.0),
//                                              child: Row(
//                                                children: <Widget>[
//                                                  Text("21. If No reason(why?) ",
//                                                    style: TextStyle(
//                                                        fontSize: 16.0,
//                                                        fontWeight: FontWeight.bold
//                                                    ),),
//                                                  SizedBox(
//                                                    width: 20.0,
//                                                  ),
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2ReasonNoRationCardTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: '',
//                                                        hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//
//                                                ],
//                                              ),
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(16.0),
//                                              child: Container(
//                                                padding: EdgeInsets.symmetric(horizontal: 24),
//                                                height: 50,
//                                                decoration: BoxDecoration(
//                                                    border: Border.all(color: Colors.black),
//                                                    color: Colors.white,
//                                                    borderRadius: BorderRadius.circular(14)),
//                                                child: DropdownButtonHideUnderline(
//                                                  child: Row(
//                                                    children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                                      SizedBox(
//                                                        width: 20,
//                                                      ),
//                                                      Expanded(
//                                                        child: DropdownButton<String>(
//                                                          hint: Text("Select Reason", style: TextStyle(color: Colors.black),),
//                                                          isExpanded: true,
//                                                          value: reasonNotGettingRationType,
////                              _currentSelectedType,
//                                                          isDense: true,
//                                                          onChanged: (String newValue) {
//                                                            setState(() {
//                                                              reasonNotGettingRationType= newValue;
//                                                              if(reasonNotGettingRationType == "Others")
//                                                                othersForRCReason = true;
//                                                              else
//                                                                othersForRCReason = false;
//
////                            state.didChange(newValue);
//                                                            });
//                                                          },
//                                                          items: this._dropDownreasonNotGettingRationItems,
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                            Visibility(
//                                              visible: othersForRCReason == true? true : false,
//                                              child: Padding(
//                                                padding: const EdgeInsets.all(4.0),
//                                                child: Row(
//                                                  children: <Widget>[
//                                                    Text("22. Others ",
//                                                      style: TextStyle(
//                                                          fontSize: 16.0,
//                                                          fontWeight: FontWeight.bold
//                                                      ),),
//                                                    SizedBox(
//                                                      width: 20.0,
//                                                    ),
//                                                    Expanded(
//                                                      child: TextField(
//                                                        controller: call2RationCardReasonOtherTextController,
////                            obscureText: true,
//                                                        decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                          labelText: 'please specify other reason ',
//                                                          hintText: '  ',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                        ),
//                                                      ),
//                                                    ),
//
//                                                  ],
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//
//
//                                    ],
//                                  )
//                              ),
//                            ),
//                            height: _animatedRationDetailsHeight,
//                            color: hexToColor('#c9dfed'),
//                          )
//                        ],
//                      ),
//                      Column(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(
//                                height: 50,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                                    onPressed: ()=>setState((){
//                                      _animatedFamilyDetailsHeight!=0.0?_animatedFamilyDetailsHeight=0.0:_animatedFamilyDetailsHeight=700.0;}),
//                                    textColor: Colors.white,
//                                    color:  hexToColor('#2980B9'),
//                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                    child: Padding(
//                                        padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                        child: Center(
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.center,
//                                            children: <Widget>[
//
//                                              Container(
//                                                color:  hexToColor('#2980B9'),
//                                                padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                                child: Text('F. Family Details',
//                                                  style: TextStyle(color: Colors.white,
//                                                      fontSize: 17.0,
//                                                      fontWeight: FontWeight.bold),),
//                                              ),
//                                              Spacer(),
//                                              Padding(
//                                                padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                                child: Icon(
//                                                  Icons.arrow_drop_down_circle,
//                                                  color:Colors.white,
//                                                  size: 30,
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        )
//                                    )
//                                )),
//                          ),
//                          AnimatedContainer( duration: const Duration(milliseconds: 120),
//                            child: Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                  child: Column(
//                                    children: <Widget>[
//                                      Padding(
//                                        padding: const EdgeInsets.all(4.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            Text("25. How many members in\n\t\t\t\t\t your family ? ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            SizedBox(
//                                              width: 20.0,
//                                            ),
//                                            Expanded(
//                                              child: TextField(
//                                                controller: call2TotalNoOfFamilyMemberTextController,
//                                                keyboardType: TextInputType.numberWithOptions(),
//                                                keyboardAppearance: Brightness.dark,
//                                                inputFormatters: [
//                                                  LengthLimitingTextInputFormatter(100),
//                                                  WhitelistingTextInputFormatter.digitsOnly
//                                                ],
////                            obscureText: true,
//                                                decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                  labelText: '',
//                                                  hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                ),
//                                              ),
//                                            ),
//
//                                          ],
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            Text("26. Below 14 years: ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            SizedBox(
//                                              width: 20.0,
//                                            ),
//                                            Expanded(
//                                              child: TextField(
//                                                controller: call2below14YearMemberTextController,
//                                                keyboardType: TextInputType.numberWithOptions(),
//                                                keyboardAppearance: Brightness.dark,
//                                                inputFormatters: [
//                                                  LengthLimitingTextInputFormatter(100),
//                                                  WhitelistingTextInputFormatter.digitsOnly
//                                                ],
////                            obscureText: true,
//                                                decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                  labelText: '',
//                                                  hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                ),
//                                              ),
//                                            ),
//
//                                          ],
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            Text("27. 14 years or above: ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            SizedBox(
//                                              width: 20.0,
//                                            ),
//                                            Expanded(
//                                              child: TextField(
//                                                controller: call2AboveOr14YearsMemberTextController,
//                                                keyboardType: TextInputType.numberWithOptions(),
//                                                keyboardAppearance: Brightness.dark,
//                                                inputFormatters: [
//                                                  LengthLimitingTextInputFormatter(100),
//                                                  WhitelistingTextInputFormatter.digitsOnly
//                                                ],
////                            obscureText: true,
//                                                decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                  labelText: '',
//                                                  hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                ),
//                                              ),
//                                            ),
//
//                                          ],
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            Text(" 28. What's Name of your\n\t\t\t\t\t family Head  ?",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            SizedBox(
//                                              width: 20.0,
//                                            ),
//                                            Expanded(
//                                              child: TextField(
//                                                controller: call2NameofFamilyHeadTextController,
////                            obscureText: true,
//                                                decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                  labelText: '',
//                                                  hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                ),
//                                              ),
//                                            ),
//
//                                          ],
//                                        ),
//                                      ),
//                                      Center(
//                                        child: Padding(
//                                          padding: const EdgeInsets.all(8.0),
//                                          child: Container(
//                                            height: 50.0,
//                                            padding:  EdgeInsets.symmetric(horizontal: 16.0),
//                                            width: double.infinity,
//                                            child: RaisedButton.icon(
//                                              shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.circular(18.0),
//                                                  side: BorderSide(color: Colors.black)
//                                              ),
//                                              hoverColor: Colors.blueGrey,
////                    padding: EdgeInsets.symmetric(horizontal: 14.0),
//                                              elevation: 5.0,
//                                              color: Colors.teal,
//                                              onPressed: () async{
//
//                                                Map members = new Map();
////
//                                                members  =   await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> FamilyMemberDetails()));
////                                  FamilyMember fmembers = FamilyMember();
//
////                                                List<FamilyMember> fmembers = new List<FamilyMember>();
//
//                                                print(members.toString());
//
//                                                setState(() {
//
//                                                  if(members != null && members.containsKey("familyMember")){
//                                                    fmembers = members["familyMember"];
//                                                    print(fmembers.toString());
//                                                    addMember1TextController.text = fmembers[0].name;
//                                                  }
//
//                                                });
//                                              },
//                                              label: Text("29. Add Working Family Members",
//                                                style: TextStyle(
//                                                    color: Colors.white
//                                                ),),
//                                              icon: Icon(Icons.add_circle, color:Colors.white,),
//                                              textColor: Colors.white,
//                                              splashColor: Colors.red,
//
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Container(
//                                          constraints: BoxConstraints(maxHeight: 200.0),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(color: Colors.black),
//                                              color: Colors.white,
//                                              borderRadius: BorderRadius.circular(18)),
//
//                                          child: ListView(
//                                            children: <Widget>[
//                                              Row(
//                                                children: <Widget>[
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: addMember1TextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
//                                                        icon: Icon(Icons.person),
//                                                        labelText: '  Member 1',
//                                                        hintText: '   Member 1',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  SizedBox(
//                                                    width: 20.0,
//                                                  ),
//
//                                                  //Confirm Password text field
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: addMember2TextController,
//                                                      obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Member 2',
//                                                        hintText: 'Member 2',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                              SizedBox(height: 20.0,),
//
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  )
//                              ),
//                            ),
//                            height: _animatedFamilyDetailsHeight,
//                            color: hexToColor('#c9dfed'),
//                          )
//                        ],
//                      ),
//                      Column(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(
//                                height: 50,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                                    onPressed: ()=>setState((){
//                                      _animatedLockdownAffectHeight!=0.0?_animatedLockdownAffectHeight=0.0:_animatedLockdownAffectHeight=1020.0;}),
//                                    textColor: Colors.white,
//                                    color:  hexToColor('#2980B9'),
//                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                    child: Padding(
//                                        padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                        child: Center(
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.center,
//                                            children: <Widget>[
//
//                                              Container(
//                                                color:  hexToColor('#2980B9'),
//                                                padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                                child: Text('G. Lockdown Affects on the family',
//                                                  style: TextStyle(color: Colors.white,
//                                                      fontSize: 17.0,
//                                                      fontWeight: FontWeight.bold),),
//                                              ),
//                                              Spacer(),
//                                              Padding(
//                                                padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                                child: Icon(
//                                                  Icons.arrow_drop_down_circle,
//                                                  color:Colors.white,
//                                                  size: 30,
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        )
//                                    )
//                                )),
//                          ),
//                          AnimatedContainer( duration: const Duration(milliseconds: 120),
//                            child: Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                  child: Column(
//                                    children: <Widget>[
//
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.start,
//                                          children: <Widget>[
//                                            Padding(
//                                              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                              child: Text(" 30. How Lockdown affected the\nfamily economy?  ",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(16.0),
//                                        child: Container(
//                                          padding: EdgeInsets.symmetric(horizontal: 24),
//                                          height: 50,
//                                          decoration: BoxDecoration(
//                                              border: Border.all(color: Colors.black),
//                                              color: Colors.white,
//                                              borderRadius: BorderRadius.circular(18)),
//                                          child: TextField(
//                                            controller: call2HowLockdownAffectTextController,
//                                            decoration: InputDecoration(
//                                              border: InputBorder.none,
//                                              prefixIcon: Icon(
//                                                Icons.person,
//                                                color: Colors.teal,
//                                              ),
//                                              hintText: 'Type Here..',
//                                              //fillColor: Color(0xffEFEFEF),
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Column(
//                                          children: <Widget>[
//
//                                            Padding(
//                                              padding: const EdgeInsets.only(top: 8.0),
//                                              child: Center(
//                                                  child: Padding(
//                                                    padding: const EdgeInsets.only( left: 10, right: 10),
//                                                    child: Text(" 31. How did the Lockdown affected the total family income?  ",
//                                                      style: TextStyle(
//                                                          fontSize: 16.0,
//                                                          fontWeight: FontWeight.bold
//                                                      ),),
//                                                  )),
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(8.0),
//                                              child: Row(
//                                                children: <Widget>[
//                                                  Expanded(
//                                                    child: TextField(
//                                                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
//                                                      controller: call2IncomebeforeLockdownTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: '  Before Amount',
//                                                        hintText: '   Member 1',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  SizedBox(
//                                                    width: 20.0,
//                                                  ),
//
//                                                  //Confirm Password text field
//                                                  Expanded(
//                                                    child: TextField(
//                                                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
//                                                      controller: call2IncomeafterLockdownTextController,
////                                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Current Amount ',
//                                                        hintText: 'Member 2',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//
//                                            Padding(
//                                              padding: const EdgeInsets.only(top: 8.0),
//                                              child: Center(
//                                                  child: Padding(
//                                                    padding: const EdgeInsets.only( left: 10,),
//                                                    child: Text("32.  Do you want to tell something about \nyour problems? ",
//                                                      style: TextStyle(
//                                                          fontSize: 16.0,
//                                                          fontWeight: FontWeight.bold
//                                                      ),),
//                                                  )),
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 16.0,  top: 10.0),
//                                              child: Container(
//                                                padding: EdgeInsets.symmetric(horizontal: 24),
//                                                height: 100,
//                                                decoration: BoxDecoration(
//                                                    border: Border.all(color: Colors.black),
//                                                    color: Colors.white,
//                                                    borderRadius: BorderRadius.circular(18)),
//                                                child: TextField(
//                                                  controller: call2TellMeSomethingMoreAboutTextController,
//                                                  maxLines: 10,
//                                                  decoration: InputDecoration(
////                  border: border: Border.all(color: Colors.black),,
////                          prefixIcon: Icon(
////                            Icons.email,
////                            color: Colors.teal,
////                          ),
//                                                    hintText: 'Type here..',
//                                                    //fillColor: Color(0xffEFEFEF),
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//
//                                    ],
//                                  )
//                              ),
//                            ),
//                            height: _animatedLockdownAffectHeight,
//                            color: hexToColor('#c9dfed'),
//                          )
//                        ],
//                      ),
//                      Column(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(
//                                height: 50,
//                                child: RaisedButton(
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                                    onPressed: ()=>setState((){
//                                      _animatedReferencedPersonHeight!=0.0?_animatedReferencedPersonHeight=0.0:_animatedReferencedPersonHeight=600.0;}),
//                                    textColor: Colors.white,
//                                    color:  hexToColor('#2980B9'),
//                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                    child: Padding(
//                                        padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                        child: Center(
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.center,
//                                            children: <Widget>[
//
//                                              Container(
//                                                color:  hexToColor('#2980B9'),
//                                                padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                                child: Text('H. Reference for family Verification',
//                                                  style: TextStyle(color: Colors.white,
//                                                      fontSize: 17.0,
//                                                      fontWeight: FontWeight.bold),),
//                                              ),
//                                              Spacer(),
//                                              Padding(
//                                                padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                                child: Icon(
//                                                  Icons.arrow_drop_down_circle,
//                                                  color:Colors.white,
//                                                  size: 30,
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        )
//                                    )
//                                )),
//                          ),
//                          AnimatedContainer( duration: const Duration(milliseconds: 120),
//                            child: Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                  child: Column(
//                                    children: <Widget>[
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
//                                        child: Container(
//                                          padding: EdgeInsets.symmetric(horizontal: 24),
//                                          height: 50,
//                                          decoration: BoxDecoration(
//                                              border: Border.all(color: Colors.black),
//                                              color: Colors.white,
//                                              borderRadius: BorderRadius.circular(18)),
//                                          child: TextField(
//                                            controller: call2NameVerifiedByTextController,
//                                            decoration: InputDecoration(
////                  border: border: Border.all(color: Colors.black),,
//                                              prefixIcon: Icon(
//                                                Icons.person,
//                                                color: Colors.teal,
//                                              ),
//                                              hintText: '33. Name',
//                                              //fillColor: Color(0xffEFEFEF),
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
//                                        child: Container(
//                                          padding: EdgeInsets.symmetric(horizontal: 24),
//                                          height: 50,
//                                          decoration: BoxDecoration(
//                                              border: Border.all(color: Colors.black),
//                                              color: Colors.white,
//                                              borderRadius: BorderRadius.circular(18)),
//                                          child: TextField(
//                                            keyboardType: TextInputType.numberWithOptions(),
//                                            keyboardAppearance: Brightness.dark,
//                                            inputFormatters: [
//                                              LengthLimitingTextInputFormatter(10),
//                                              WhitelistingTextInputFormatter.digitsOnly
//                                            ],
//
//                                            controller: contactVerifiedByTextController,
//                                            decoration: InputDecoration(
////                  border: border: Border.all(color: Colors.black),,
//                                              prefixIcon: Icon(
//                                                Icons.phone,
//                                                color: Colors.teal,
//                                              ),
//                                              hintText: '34. Contact Number',
//                                              //fillColor: Color(0xffEFEFEF),
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
//                                        child: Container(
//                                          padding: EdgeInsets.symmetric(horizontal: 24),
//                                          height: 50,
//                                          decoration: BoxDecoration(
//                                              border: Border.all(color: Colors.black),
//                                              color: Colors.white,
//                                              borderRadius: BorderRadius.circular(18)),
//                                          child: TextField(
//
//                                            controller: call2RelationVrefiedByTextController,
//                                            decoration: InputDecoration(
////                  border: border: Border.all(color: Colors.black),,
//                                              prefixIcon: Icon(
//                                                Icons.person_add,
//                                                color: Colors.teal,
//                                              ),
//                                              hintText: '35. how do you know Benificiary ? ',
//                                              //fillColor: Color(0xffEFEFEF),
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//
//                                    ],
//                                  )
//                              ),
//                            ),
//                            height: _animatedReferencedPersonHeight,
//                            color: hexToColor('#c9dfed'),
//                          )
//                        ],
//                      ),
//                      Visibility(
//                        visible: false,
//                        child: Column(
//                          children: <Widget>[
//                            Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Container(
//                                  height: 50,
//                                  child: RaisedButton(
//                                      shape: RoundedRectangleBorder(
//                                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                                      onPressed: ()=>setState((){
//                                        _animatedVerificationCallHeight!=0.0?_animatedVerificationCallHeight=0.0:_animatedVerificationCallHeight=700.0;}),
//                                      textColor: Colors.white,
//                                      color:  hexToColor('#2980B9'),
//                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                      child: Padding(
//                                          padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                          child: Center(
//                                            child: Row(
//                                              mainAxisAlignment: MainAxisAlignment.center,
//                                              children: <Widget>[
//                                                Container(
//                                                  color:  hexToColor('#2980B9'),
//                                                  padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                                  child: Text('I. Verification Call',
//                                                    style: TextStyle(color: Colors.white,
//                                                        fontSize: 17.0,
//                                                        fontWeight: FontWeight.bold),),
//                                                ),
//                                                Spacer(),
//                                                Padding(
//                                                  padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                                  child: Icon(
//                                                    Icons.arrow_drop_down_circle,
//                                                    color:Colors.white,
//                                                    size: 30,
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                          )
//                                      )
//                                  )),
//                            ),
//                            AnimatedContainer( duration: const Duration(milliseconds: 120),
//                              child: Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Container(
//                                    child: Column(
//                                      children: <Widget>[
//                                        Row(
//                                          mainAxisAlignment: MainAxisAlignment.start,
//                                          children: <Widget>[
//                                            Checkbox(
//                                              value: verificationCallVal,
//                                              onChanged: (bool value) {
//                                                setState(() {
//                                                  verificationCallVal = value;
//                                                });
//                                              },
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(8.0),
//                                              child: Text("Verfication Call",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),
//                                              ),
//                                            ),
//
//
//                                          ],
//                                        ),
//
//                                        Padding(
//                                          padding: const EdgeInsets.all(8.0),
//                                          child: Column(
//
//                                            children: <Widget>[
//                                              Row(
//                                                children: <Widget>[
//                                                  Text("By Campus Haat   ",
//                                                    style: TextStyle(
//                                                        fontSize: 16.0,
//                                                        fontWeight: FontWeight.bold
//                                                    ),),
//                                                  Spacer(),
//                                                  Padding(
//                                                    padding: const EdgeInsets.only(left: 8.0),
//                                                    child: RaisedButton.icon(
//                                                        shape: RoundedRectangleBorder(
//                                                            borderRadius: BorderRadius.circular(18.0),
//                                                            side: BorderSide(color: Colors.black)
//                                                        ),
//                                                        hoverColor: Colors.blueGrey,
//                                                        elevation: 5.0,
//                                                        color: Colors.teal,
//                                                        onPressed: (){
//
//                                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>VerificationByCH() ));
//                                                        }, icon: Icon(Icons.add, color: Colors.white,), label: Text(" ADD ", style: TextStyle(
//                                                        fontWeight: FontWeight.bold,
//                                                        color: Colors.white
//                                                    ),)),
//                                                  ),
//
//                                                ],
//                                              ),
//                                              Row(
//                                                children: <Widget>[
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2recommendationbyCHTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Type Here..',
//                                                        hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  SizedBox(
//                                                    width: 20.0,
//                                                  ),
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2dateOfRecommendationTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Type Here..',
//                                                        hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                        Padding(
//                                          padding: const EdgeInsets.all(8.0),
//                                          child: Column(
//
//                                            children: <Widget>[
//                                              Row(
//                                                children: <Widget>[
//                                                  Text("By Reference   ",
//                                                    style: TextStyle(
//                                                        fontSize: 16.0,
//                                                        fontWeight: FontWeight.bold
//                                                    ),),
//                                                  Spacer(),
//                                                  Padding(
//                                                    padding: const EdgeInsets.only(left: 8.0),
//                                                    child: RaisedButton.icon(
//                                                        shape: RoundedRectangleBorder(
//                                                            borderRadius: BorderRadius.circular(18.0),
//                                                            side: BorderSide(color: Colors.black)
//                                                        ),
//                                                        hoverColor: Colors.blueGrey,
//                                                        elevation: 5.0,
//                                                        color: Colors.teal,
//                                                        onPressed: (){
//                                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>VerificationByReference() ));
//
//                                                        }, icon: Icon(Icons.add, color: Colors.white,), label: Text(" ADD ", style: TextStyle(
//                                                        fontWeight: FontWeight.bold,
//                                                        color: Colors.white
//                                                    ),)),
//                                                  ),
//
//                                                ],
//                                              ),
//                                              Row(
//                                                children: <Widget>[
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2recommendationbyReferenceTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Type Here..',
//                                                        hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  SizedBox(
//                                                    width: 20.0,
//                                                  ),
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2dateOfRecommendationByRefTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Type Here..',
//                                                        hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                        Padding(
//                                          padding: const EdgeInsets.all(8.0),
//                                          child: Column(
//
//                                            children: <Widget>[
//                                              Row(
//                                                children: <Widget>[
//                                                  Text("By KPF   ",
//                                                    style: TextStyle(
//                                                        fontSize: 16.0,
//                                                        fontWeight: FontWeight.bold
//                                                    ),),
//                                                  Spacer(),
//                                                  Padding(
//                                                    padding: const EdgeInsets.only(left: 8.0),
//                                                    child: RaisedButton.icon(
//                                                        shape: RoundedRectangleBorder(
//                                                            borderRadius: BorderRadius.circular(18.0),
//                                                            side: BorderSide(color: Colors.black)
//                                                        ),
//                                                        hoverColor: Colors.blueGrey,
//                                                        elevation: 5.0,
//                                                        color: Colors.teal,
//                                                        onPressed: (){
//                                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>VerificationByKPF() ));
//
//                                                        }, icon: Icon(Icons.add, color: Colors.white,), label: Text(" ADD ", style: TextStyle(
//                                                        fontWeight: FontWeight.bold,
//                                                        color: Colors.white
//                                                    ),)),
//                                                  ),
//
//                                                ],
//                                              ),
//                                              Row(
//                                                children: <Widget>[
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2recommendationbyKPFTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Type Here..',
//                                                        hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  SizedBox(
//                                                    width: 20.0,
//                                                  ),
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2dateOfRecommendationByKPFTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'Type Here..',
//                                                        hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//
//                                      ],
//                                    )
//                                ),
//                              ),
//                              height: _animatedVerificationCallHeight,
//                              color: hexToColor('#c9dfed'),
//                            )
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//
//
//              Visibility(
//                visible: false,
//                child: Column(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Container(
//                          height: 50,
//                          child: RaisedButton(
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                              onPressed: ()=>setState((){
//                                _animatedStatusHeight !=0.0 ?  _animatedStatusHeight =0.0 : _animatedStatusHeight=900.0;}),
//                              textColor: Colors.white,
//                              color:  hexToColor('#2980B9'),
//                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                              child: Padding(
//                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                  child: Center(
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.center,
//                                      children: <Widget>[
//
//                                        Container(
//                                          color:  hexToColor('#2980B9'),
//                                          padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                          child: Text('K. Status',
//                                            style: TextStyle(color: Colors.white,
//                                                fontSize: 17.0,
//                                                fontWeight: FontWeight.bold),),
//                                        ),
//                                        Spacer(),
//                                        Padding(
//                                          padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                          child: Icon(
//                                            Icons.arrow_drop_down_circle,
//                                            color:Colors.white,
//                                            size: 30,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  )
//                              )
//                          )),
//                    ),
//                    AnimatedContainer( duration: const Duration(milliseconds: 120),
//                      child: Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Container(
//                            child: Column(
//                              children: <Widget>[
//
//
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  children: <Widget>[
//                                    Checkbox(
//                                      value: verificationCallVal,
//                                      onChanged: (bool value) {
//                                        setState(() {
//                                          verificationCallVal = value;
//                                        });
//                                      },
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.all(8.0),
//                                      child: Text("Verfication Done",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),
//                                      ),
//                                    ),
//
//
//                                  ],
//                                ),
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  children: <Widget>[
//                                    Checkbox(
//                                      value: referenceCheckVal,
//                                      onChanged: (bool value) {
//                                        setState(() {
//                                          referenceCheckVal = value;
//                                        });
//                                      },
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.all(8.0),
//                                      child: Text("Reference Check Done",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),
//                                      ),
//                                    ),
//
//
//                                  ],
//                                ),
//
//                                Padding(
//                                  padding: const EdgeInsets.only(left:8.0),
//                                  child: Row(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    children: <Widget>[
//                                      Padding(
//                                        padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                        child: Text("Selection Status Done ",
//                                          style: TextStyle(
//                                              fontSize: 18.0,
//                                              fontWeight: FontWeight.bold
//                                          ),),
//                                      ),
//
//                                    ],
//                                  ),
//                                ),
//                                SizedBox(
//                                  width: 20,
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(16.0),
//                                  child: Container(
//                                    padding: EdgeInsets.symmetric(horizontal: 24),
//                                    height: 50,
//                                    decoration: BoxDecoration(
//                                        border: Border.all(color: Colors.black),
//                                        color: Colors.white,
//                                        borderRadius: BorderRadius.circular(14)),
//                                    child: DropdownButtonHideUnderline(
//                                      child: Row(
//                                        children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                          SizedBox(
//                                            width: 20,
//                                          ),
//                                          Expanded(
//                                            child: DropdownButton<String>(
//                                              hint: Text("-- Select --", style: TextStyle(color: Colors.black),),
//                                              isExpanded: true,
//                                              value: selectBenType,
////                              _currentSelectedType,
//                                              isDense: true,
//                                              onChanged: (String newValue) {
//                                                setState(() {
//                                                  selectBenType= newValue;
////                            state.didChange(newValue);
//                                                });
//                                              },
//                                              items: this._dropDownSelectionItems,
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//                                  child: Text(" Remarks by Operators",
//                                    style: TextStyle(
//                                        fontSize: 16.0,
//                                        fontWeight: FontWeight.bold
//                                    ),),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(16.0),
//                                  child: Container(
//                                    padding: EdgeInsets.symmetric(horizontal: 24),
//                                    height: 100,
//                                    decoration: BoxDecoration(
//                                        border: Border.all(color: Colors.black),
//                                        color: Colors.white,
//                                        borderRadius: BorderRadius.circular(18)),
//                                    child: TextField(
//                                      controller: call2RemarksByOperatorTextController,
//                                      maxLines: 10,
//                                      decoration: InputDecoration(
//                                        border: InputBorder.none,
//                                        prefixIcon: Icon(
//                                          Icons.description,
//                                          color: Colors.teal,
//                                        ),
//                                        hintText: 'Type Remarks here...',
//                                        //fillColor: Color(0xffEFEFEF),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//
//
//                                Center(
//                                    child: Padding(
//                                      padding: const EdgeInsets.only( left: 10, right: 10),
//                                      child: Text("16. KPF Status?",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),),
//                                    )),
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Row(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    children: <Widget>[
//                                      Padding(
//                                        padding: const EdgeInsets.only(right :19.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                          children: <Widget>[
//                                            Checkbox(
//                                              value: goCheckVal,
//                                              onChanged: (bool value) {
//                                                setState(() {
//                                                  goCheckVal = value;
//                                                  noGoCheckVal = false;
//                                                });
//                                              },
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(8.0),
//                                              child: Text("GO",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//
//                                      Padding(
//                                        padding: const EdgeInsets.only(right :19.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                          children: <Widget>[
//                                            Checkbox(
//                                              value: noGoCheckVal,
//                                              onChanged: (bool value) {
//                                                setState(() {
//                                                  noGoCheckVal = value;
//                                                  goCheckVal = false;
//
//                                                });
//                                              },
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(8.0),
//                                              child: Text("No-GO",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//
//                                Center(
//                                    child: Padding(
//                                      padding: const EdgeInsets.only( left: 10, right: 10),
//                                      child: Text("16.Member Name",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),),
//                                    )),
//                                Padding(
//                                  padding: const EdgeInsets.all(4.0),
//                                  child: Container(
//                                    padding: EdgeInsets.symmetric(horizontal: 24),
//                                    height: 50,
//                                    decoration: BoxDecoration(
//                                        border: Border.all(color: Colors.black),
//                                        color: Colors.white,
//                                        borderRadius: BorderRadius.circular(14)),
//                                    child: DropdownButtonHideUnderline(
//                                      child: Row(
//                                        children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                          SizedBox(
//                                            width: 20,
//                                          ),
//                                          Expanded(
//                                            child: DropdownButton<String>(
//                                              hint: Text("-- Select --", style: TextStyle(color: Colors.black),),
//                                              isExpanded: true,
//                                              value: KpfName2Type,
////                              _currentSelectedType,
//                                              isDense: true,
//                                              onChanged: (String newValue) {
//                                                setState(() {
//                                                  KpfName2Type= newValue;
////                            state.didChange(newValue);
//                                                });
//                                              },
//                                              items: this._dropDownKpfNameType2Items,
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ),
//                                ),
//
//                                Row(
//                                  children: <Widget>[
//                                    Center(
//                                        child: Padding(
//                                          padding: const EdgeInsets.only( left: 10, right: 10),
//                                          child: Text("Date when filled",
//                                            style: TextStyle(
//                                                fontSize: 16.0,
//                                                fontWeight: FontWeight.bold
//                                            ),),
//                                        )),
//                                    SizedBox(
//                                      width: 20.0,
//                                    ),
//                                    Expanded(
//                                      child: TextField(
//                                        controller: call2dateOfRemarkbyKPFTextController,
////                            obscureText: true,
//                                        decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                          labelText: 'ie.  15-05-2020',
//                                          hintText: '  Unit',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Center(
//                                      child: Padding(
//                                        padding: const EdgeInsets.only( left: 10, right: 10),
//                                        child: Text("Comments of KPF",
//                                          style: TextStyle(
//                                              fontSize: 16.0,
//                                              fontWeight: FontWeight.bold
//                                          ),),
//                                      )),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(16.0),
//                                  child: Container(
//                                    padding: EdgeInsets.symmetric(horizontal: 24),
//                                    height: 100,
//                                    decoration: BoxDecoration(
//                                        border: Border.all(color: Colors.black),
//                                        color: Colors.white,
//                                        borderRadius: BorderRadius.circular(18)),
//                                    child: TextField(
//                                      controller: call2RemarksByKPFCommentsTextController,
//                                      maxLines: 10,
//                                      decoration: InputDecoration(
//                                        border: InputBorder.none,
//                                        prefixIcon: Icon(
//                                          Icons.description,
//                                          color: Colors.teal,
//                                        ),
//                                        hintText: 'Type Remarks here...',
//                                        //fillColor: Color(0xffEFEFEF),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//
//                                Padding(
//                                  padding: const EdgeInsets.only(right :19.0),
//                                  child: Row(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    children: <Widget>[
//                                      Checkbox(
//                                        value: sentToDelivery,
//                                        onChanged: (bool value) {
//                                          setState(() {
//
//                                            sentToDelivery = value;
////                                          deliveryDoneNoVal = false;
//
//                                          });
//                                        },
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Text("Sent List to Vendor",
//                                          style: TextStyle(
//                                              fontSize: 16.0,
//                                              fontWeight: FontWeight.bold
//                                          ),
//                                        ),
//                                      ),
//                                      SizedBox(
//                                        width: 20.0,
//                                      ),
//                                      Expanded(
//                                        child: TextField(
//                                          controller: call2dateOfRationDeliveredTextController,
////                            obscureText: true,
//                                          decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                            labelText: 'eg.  15-05-2020',
//                                            hintText: '  ',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ],
//                            )
//                        ),
//                      ),
//                      height: _animatedStatusHeight,
//                      color: hexToColor('#c9dfed'),
//                    )
//                  ],
//                ),
//              ),
//              Visibility(
//                visible: false,
//                child: Column(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Container(
//                          height: 50,
//                          child: RaisedButton(
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                              onPressed: ()=>setState((){
//                                _animatedRationDeliveryStatusHeight !=0.0 ?  _animatedRationDeliveryStatusHeight =0.0 : _animatedRationDeliveryStatusHeight=900.0;}),
//                              textColor: Colors.white,
//                              color:  hexToColor('#2980B9'),
//                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                              child: Padding(
//                                  padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                  child: Center(
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.center,
//                                      children: <Widget>[
//
//                                        Container(
//                                          color:  hexToColor('#2980B9'),
//                                          padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
//                                          child: Text('I. Delivery Status',
//                                            style: TextStyle(color: Colors.white,
//                                                fontSize: 17.0,
//                                                fontWeight: FontWeight.bold),),
//                                        ),
//                                        Spacer(),
//                                        Padding(
//                                          padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
//                                          child: Icon(
//                                            Icons.arrow_drop_down_circle,
//                                            color:Colors.white,
//                                            size: 30,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  )
//                              )
//                          )),
//                    ),
//                    AnimatedContainer( duration: const Duration(milliseconds: 120),
//                      child: Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Container(
//                            child: Column(
//                              children: <Widget>[
//
//                                Center(
//                                    child: Padding(
//                                      padding: const EdgeInsets.only( left: 10, right: 10),
//                                      child: Text("Delivery Done",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),),
//                                    )),
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Row(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    children: <Widget>[
//                                      Padding(
//                                        padding: const EdgeInsets.only(right :19.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                          children: <Widget>[
//                                            Checkbox(
//                                              value: deliveryDoneYesVal,
//                                              onChanged: (bool value) {
//                                                setState(() {
//
//                                                  deliveryDoneYesVal = value;
//                                                  deliveryDoneNoVal = false;
//
//                                                });
//                                              },
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(8.0),
//                                              child: Text("Yes",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(right :19.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                          children: <Widget>[
//                                            Checkbox(
//                                              value: deliveryDoneNoVal,
//                                              onChanged: (bool value) {
//                                                setState(() {
//
//                                                  deliveryDoneNoVal = value;
//                                                  deliveryDoneYesVal = false;
//
//                                                });
//                                              },
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.all(8.0),
//                                              child: Text("No",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//
//                                Visibility(
//                                  visible: false,
//                                  child: Container(
//                                    child: Column(
//                                      children: <Widget>[
//                                        Row(
//                                          children: <Widget>[
//                                            Text("Aadhar Upload   ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            Spacer(),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 8.0),
//                                              child: RaisedButton.icon(
//                                                  shape: RoundedRectangleBorder(
//                                                      borderRadius: BorderRadius.circular(18.0),
//                                                      side: BorderSide(color: Colors.black)
//                                                  ),
//                                                  hoverColor: Colors.blueGrey,
//                                                  elevation: 5.0,
//                                                  color: Colors.teal,
//                                                  onPressed: (){
//
//                                                  }, icon: Icon(Icons.add, color: Colors.white,), label: Text(" ADD ", style: TextStyle(
//                                                  fontWeight: FontWeight.bold,
//                                                  color: Colors.white
//                                              ),)),
//                                            ),
//
//                                          ],
//                                        ),
//                                        Row(
//                                          children: <Widget>[
//                                            Text("Ration Card Upload  ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            Spacer(),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 8.0),
//                                              child: RaisedButton.icon(
//                                                  shape: RoundedRectangleBorder(
//                                                      borderRadius: BorderRadius.circular(18.0),
//                                                      side: BorderSide(color: Colors.black)
//                                                  ),
//                                                  hoverColor: Colors.blueGrey,
//                                                  elevation: 5.0,
//                                                  color: Colors.teal,
//                                                  onPressed: (){
//
//                                                  }, icon: Icon(Icons.add, color: Colors.white,), label: Text(" ADD ", style: TextStyle(
//                                                  fontWeight: FontWeight.bold,
//                                                  color: Colors.white
//                                              ),)),
//                                            ),
//
//                                          ],
//                                        ),
//                                        Row(
//                                          children: <Widget>[
//                                            Text("Photo Of Benificiary ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            Spacer(),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 8.0),
//                                              child: RaisedButton.icon(
//                                                  shape: RoundedRectangleBorder(
//                                                      borderRadius: BorderRadius.circular(18.0),
//                                                      side: BorderSide(color: Colors.black)
//                                                  ),
//                                                  hoverColor: Colors.blueGrey,
//                                                  elevation: 5.0,
//                                                  color: Colors.teal,
//                                                  onPressed: (){
//
//                                                  }, icon: Icon(Icons.photo, color: Colors.white,), label: Text(" ADD ", style: TextStyle(
//                                                  fontWeight: FontWeight.bold,
//                                                  color: Colors.white
//                                              ),)),
//                                            ),
//
//                                          ],
//                                        ),
//                                        Row(
//                                          children: <Widget>[
//                                            Text("GPS Location  ",
//                                              style: TextStyle(
//                                                  fontSize: 16.0,
//                                                  fontWeight: FontWeight.bold
//                                              ),),
//                                            Spacer(),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 8.0),
//                                              child: RaisedButton.icon(
//                                                  shape: RoundedRectangleBorder(
//                                                      borderRadius: BorderRadius.circular(18.0),
//                                                      side: BorderSide(color: Colors.black)
//                                                  ),
//                                                  hoverColor: Colors.blueGrey,
//                                                  elevation: 5.0,
//                                                  color: Colors.teal,
//                                                  onPressed: (){
//
//                                                  }, icon: Icon(Icons.gps_fixed, color: Colors.white,), label: Text(" ADD ", style: TextStyle(
//                                                  fontWeight: FontWeight.bold,
//                                                  color: Colors.white
//                                              ),)),
//                                            ),
//
//                                          ],
//                                        ),
//                                        Padding(
//                                          padding: const EdgeInsets.all(8.0),
//                                          child: Column(
//
//                                            children: <Widget>[
//
//                                              Row(
//                                                children: <Widget>[
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2rationDeliveryStatusTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'eg. Delivered By',
//                                                        hintText: ' Ankit ',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  SizedBox(
//                                                    width: 20.0,
//                                                  ),
//                                                  Expanded(
//                                                    child: TextField(
//                                                      controller: call2dateOfRationDeliveredTextController,
////                            obscureText: true,
//                                                      decoration: InputDecoration(
////                          icon: Icon(Icons.lock),
//                                                        labelText: 'eg.  15-05-2020',
//                                                        hintText: '  Date',
////                            errorText: _validatePassword
////                                ? "Password can\'t be empty"
////                                : null,
//                                                      ),
//                                                    ),
//                                                  ),
//
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                        Center(
//                                            child: Padding(
//                                              padding: const EdgeInsets.only( left: 10, right: 10),
//                                              child: Text("OTP matched",
//                                                style: TextStyle(
//                                                    fontSize: 16.0,
//                                                    fontWeight: FontWeight.bold
//                                                ),),
//                                            )),
//                                        Padding(
//                                          padding: const EdgeInsets.all(8.0),
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.center,
//                                            children: <Widget>[
//                                              Padding(
//                                                padding: const EdgeInsets.only(right :19.0),
//                                                child: Row(
//                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                  children: <Widget>[
//                                                    Checkbox(
//                                                      value: oTPMatchYesVal,
//                                                      onChanged: (bool value) {
//                                                        setState(() {
//                                                          oTPMatchYesVal = value;
//                                                          OTPMatchNoVal = false;
//                                                        });
//                                                      },
//                                                    ),
//                                                    Padding(
//                                                      padding: const EdgeInsets.all(8.0),
//                                                      child: Text("Yes",
//                                                        style: TextStyle(
//                                                            fontSize: 16.0,
//                                                            fontWeight: FontWeight.bold
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ],
//                                                ),
//                                              ),
//                                              Padding(
//                                                padding: const EdgeInsets.only(right :19.0),
//                                                child: Row(
//                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                  children: <Widget>[
//                                                    Checkbox(
//                                                      value: OTPMatchNoVal,
//                                                      onChanged: (bool value) {
//                                                        setState(() {
//                                                          OTPMatchNoVal = value;
//                                                          oTPMatchYesVal = false;
//                                                        });
//                                                      },
//                                                    ),
//                                                    Padding(
//                                                      padding: const EdgeInsets.all(8.0),
//                                                      child: Text("No",
//                                                        style: TextStyle(
//                                                            fontSize: 16.0,
//                                                            fontWeight: FontWeight.bold
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ],
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ),
//                                Center(
//                                    child: Padding(
//                                      padding: const EdgeInsets.only( left: 10, right: 10),
//                                      child: Text("If No Reason why?",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold
//                                        ),),
//                                    )),
//                                Padding(
//                                  padding: const EdgeInsets.all(4.0),
//                                  child: Container(
//                                    padding: EdgeInsets.symmetric(horizontal: 24),
//                                    height: 50,
//                                    decoration: BoxDecoration(
//                                        border: Border.all(color: Colors.black),
//                                        color: Colors.white,
//                                        borderRadius: BorderRadius.circular(14)),
//                                    child: DropdownButtonHideUnderline(
//                                      child: Row(
//                                        children: <Widget>[
////                      Icon(
////                        Icons.search,
////                        color: Colors.black,
////                      ),
//                                          SizedBox(
//                                            width: 20,
//                                          ),
//                                          Expanded(
//                                            child: DropdownButton<String>(
//                                              hint: Text("-- Select --", style: TextStyle(color: Colors.black),),
//                                              isExpanded: true,
//                                              value: deliveryReasonType,
////                              _currentSelectedType,
//                                              isDense: true,
//                                              onChanged: (String newValue) {
//                                                setState(() {
//                                                  deliveryReasonType = newValue;
////                            state.didChange(newValue);
//                                                });
//                                              },
//                                              items: this._dropDowndeliveryReasonItems,
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ),
//                                ),
//
//                              ],
//                            )
//                        ),
//                      ),
//                      height: _animatedRationDeliveryStatusHeight,
//                      color: hexToColor('#c9dfed'),
//                    )
//                  ],
//                ),
//              ),
//
//
//              Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: RaisedButton.icon(onPressed: (){
//
//                },
//                  icon: Icon(Icons.add_circle, color: Colors.white), label: Text("Add Call Logs", style: TextStyle(
//                      color: Colors.white
//                  ),),
//                  color: Colors.teal,),
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Checkbox(
//                    value: acceptPolicyVal,
//                    onChanged: (bool value) {
//                      setState(() {
//                        acceptPolicyVal = value;
//                      });
//                    },
//                  ),
//
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Wrap(children: <Widget>[
//                      Text("All the information is correct to\nthe best of my knowledge.",
//                        style: TextStyle(
//                            fontSize: 16.0,
//                            fontWeight: FontWeight.bold
//                        ),
//                      ),
//                    ],
//                    ),
//                  ),
//                ],
//              ),
//              SizedBox(
//                height: 60.0,
//              ),
//              Center(
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Container(
//                    height: 50.0,
//                    padding:  EdgeInsets.symmetric(horizontal: 16.0),
//                    width: double.infinity,
//                    child: RaisedButton(
//                      shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(18.0),
//                          side: BorderSide(color: Colors.black)
//                      ),
//                      hoverColor: Colors.blueGrey,
//                      padding: EdgeInsets.symmetric(horizontal: 14.0),
//                      elevation: 5.0,
//                      color: Colors.teal,
//                      onPressed: () async{
//
//                        final SharedPreferences prefs = await SharedPreferences.getInstance();
//
//                        String name = nameController.text.toString().trim();
//                        String kpfName = kpfNameController.text.toString().trim();
//                        String othersources = camp_other_textController.text.toString().trim();
//                        String age = camp_age_textController.text.toString().trim();
//                        String benHouseNo = benHouseNoTextController.text.toString().trim();
//                        String benLocalilty = benLocalityTextController.text.toString().trim();
//                        String benBuilding = benBuildingNameTextController.text.toString().trim();
//                        String benlandmark = benLandMarkTextController.text.toString().trim();
//                        String benPincode = benPincodeTextController.text.toString().trim();
//                        String benCity = benCityTextController.text.toString().trim();
//                        String benContactNumber = benContactNumberTextController.text.toString().trim();
//                        String call2ConAdd = call2ConfirmAddressTextController.text.toString().trim();
//                        String call2ConPin = call2ConfirmPincodeTextController.text.toString().trim();
//                        String call2ReasonMismatch = call2ReasonMismatchTextController.text.toString().trim();
//                        String call2RationCardUnit = call2RationCardUnitTextController.text.toString().trim();
//                        String call2ReasonNoRationCArd = call2ReasonNoRationCardTextController.text.toString().trim();
//                        String call2RationCardOther  = call2RationCardReasonOtherTextController.text.toString().trim();
//                        String call2NoOfFamilyMemeber  = call2TotalNoOfFamilyMemberTextController.text.toString().trim();
//                        String call2below14Member = call2below14YearMemberTextController.text.toString().trim();
//                        String call2Above14Member = call2AboveOr14YearsMemberTextController.text.toString().trim();
//                        String call2NameofFamilyHead = call2NameofFamilyHeadTextController.text.toString().trim();
//                        String addMember = addMember1TextController.text.toString().trim();
//                        String call2HowLockdownAffect = call2HowLockdownAffectTextController.text.toString().trim();
//                        String call2IncomebeforeLockdown = call2IncomebeforeLockdownTextController.text.toString().trim();
//                        String call2IncomeafterLockdown = call2IncomeafterLockdownTextController.text.toString().trim();
//                        String call2OtherResasonAffectedBy = call2OtherResasonAffectedByTextController.text.toString().trim();
//                        String call2TellMeSomethingMoreAbout = call2TellMeSomethingMoreAboutTextController.text.toString().trim();
//                        String call2NameVerifiedBy = call2NameVerifiedByTextController.text.toString().trim();
//                        String contactVerifiedBy  = contactVerifiedByTextController.text.toString().trim();
//                        String call2RelationVrefiedBy = call2RelationVrefiedByTextController.text.toString().trim();
//                        String call2VerfiedRemarks = call2VerfiedRemarksTextController.text.toString().trim();
//                        String call2RemarksByCHOperator = call2RemarksByCHOperatorTextController.text.toString().trim();
//                        String call2RemarksByKPFOperator = call2RemarksByKPFOperatorTextController.text.toString().trim();
//                        String call2RationDeliveredBy = call2RationDeliveredByTextController.text.toString().trim();
//                        String call2RationDeliveredDate = call2RationDeliveredDateTextController.text.toString().trim();
//
//                        List<String> campaignData = new List<String>();
//                        campaignData.add(name);
//                        campaignData.add(kpfName);
//                        campaignData.add(othersources);
//                        campaignData.add(age);
//                        campaignData.add(benHouseNo);
//                        campaignData.add(benLocalilty);
//                        campaignData.add(benBuilding);
//                        campaignData.add(benCity);
//                        campaignData.add(benContactNumber);
//                        campaignData.add(call2ConAdd);
//                        campaignData.add(call2ConPin);
//                        campaignData.add(call2ReasonMismatch);
//                        campaignData.add(call2RationCardUnit);
//                        campaignData.add(call2ReasonNoRationCArd);
//                        campaignData.add(call2RationCardOther);
//                        campaignData.add(call2NoOfFamilyMemeber);
//                        campaignData.add(call2below14Member);
//                        campaignData.add(call2Above14Member);
//                        campaignData.add(call2NameofFamilyHead);
//                        campaignData.add(addMember);
//                        campaignData.add(call2HowLockdownAffect);
//                        campaignData.add(call2IncomebeforeLockdown);
//                        campaignData.add(call2IncomeafterLockdown);
//                        campaignData.add(call2OtherResasonAffectedBy);
//                        campaignData.add(call2TellMeSomethingMoreAbout);
//                        campaignData.add(call2NameVerifiedBy);
//                        campaignData.add(contactVerifiedBy);
//                        campaignData.add(call2RelationVrefiedBy);
//                        campaignData.add(call2VerfiedRemarks);
//                        campaignData.add(call2RemarksByCHOperator);
//                        campaignData.add(call2RemarksByKPFOperator);
//                        campaignData.add(call2RationDeliveredBy);
//                        campaignData.add(call2RationDeliveredDate);
//                        campaignData.addAll(members);
//                        CommonData.saveLoginUser(campaignData);
//
//
//                        Campaign myCampaignData = new Campaign();
//                        Family familyData = new Family();
//                        FamilyAddress familyAddress = new FamilyAddress();
//                        Aadhar aadhar = new Aadhar();
//                        Ration rationdata = new Ration();
//                        FamilyEmployment familyEmpData = new FamilyEmployment();
//                        Reference referenceData = new Reference();
//
//                        Call2 call2 = new Call2();
//                        CampaignStatus campStatus = new CampaignStatus();
//                        RationDelivery rationDel = new RationDelivery();
//
//
//                        FamilyRecord familyRecords = new FamilyRecord();
//                        Call1 call1Data = new Call1();
//
//                        call1Data.headName = nameController.text.toString().trim();
//                        call1Data.callerName = nameController.text.toString().trim();
//                        call1Data.headAge = camp_age_textController.text.toString().trim();
//                        call1Data.headMobile = benContactNumberTextController.text.toString().trim();
////                        familyAddress.verficationAddress = call2ConfirmAddressTextController.text.toString().trim();
////                        familyAddress.verficationPinCode = call2ConfirmPincodeTextController.text.toString().trim();
////
////                        if(adMisMatchYesVal)
////                        familyAddress.isAddressSame = adMisMatchYesVal;
////                        else if(adMisMatchNoVal)
////                          familyAddress.isAddressSame = false;
////
////                        familyAddress.mismatchReason = call2ReasonMismatchTextController.text.toString().trim();
////                        aadhar.aadharVerificationStatus = aadhAvailabilityType.toString();
////                        aadhar.aadharNumber = call2AadharNumberTextController.text.toString().trim();
////
////                        if(gettingRationYesVal)
////                        rationdata.rationReceived = gettingRationYesVal;
////                        else if(gettingRationNoVal)
////                          rationdata.rationReceived = false;
//
////                        if(call2RationCardUnitTextController != null)
////                        rationdata.RationCardUnits = int.parse(call2RationCardUnitTextController.text.toString().trim());
////                        rationdata.rationNotFoundReason = call2ReasonNoRationCardTextController.text.toString().trim();
////                        rationdata.rationNotFoundReasonAnswer = reasonNotGettingRationType.toString().trim();
//
////                        if(call2TotalNoOfFamilyMemberTextController!= null)
////                        familyData.numberOfMembers = int.parse(call2TotalNoOfFamilyMemberTextController.text.toString().trim());
////                       if(call2below14YearMemberTextController!= null)
////                        familyData.numberOfChild = int.parse( call2below14YearMemberTextController.text.toString().trim());
////                       if(call2AboveOr14YearsMemberTextController != null)
////                       familyData.numberOfAdult = int.parse(call2AboveOr14YearsMemberTextController.text.toString().trim());
////                        familyData.headName = call2NameofFamilyHeadTextController.text.toString().trim();
//
////                        familyData.familyMember = new List<FamilyMember>();
////                        familyData.familyMember.addAll(fmembers);
////                        familyEmpData.lockdownEffectOnFamily = call2HowLockdownAffectTextController.text.toString().trim();
////                        if(call2IncomebeforeLockdownTextController!= null)
////                        familyEmpData.incomeBefore = int.parse(call2IncomebeforeLockdownTextController.text.toString().trim());
////                        if(call2IncomeafterLockdownTextController!= null)
////                        familyEmpData.incomeCurrent = int.parse(call2IncomeafterLockdownTextController.text.toString().trim());
////                        familyEmpData.anyOtherProblem = call2TellMeSomethingMoreAboutTextController.text.toString().trim();
////                        referenceData.name = call2NameVerifiedByTextController.text.toString().trim();
////                        referenceData.number = contactVerifiedByTextController.text.toString().trim();
////                        referenceData.relationship = call2RelationVrefiedByTextController.text.toString().trim();
////                        myCampaignData.isVerificationCall = verificationCallVal;
////                        myCampaignData.referenceChecked = referenceCheckVal;
////                        myCampaignData.verificationStatusCH = selectBenType.toString();
////                        myCampaignData.verifiedByCHRemark = call2RemarksByOperatorTextController.text.toString().trim();
////                        myCampaignData.verifiedByKPFMember = KpfName2Type.toString();
////
////                        if(goCheckVal)
////                        myCampaignData.verificationStatusKPF = "GO";
////                        else if(noGoCheckVal)
////                          myCampaignData.verificationStatusKPF = "Not-GO";
////
////                        myCampaignData.verifiedByKPFDate = call2dateOfRemarkbyKPFTextController.text.toString().trim();
////                        myCampaignData.verifiedByKPFRemark = call2RemarksByKPFCommentsTextController.text.toString().trim();
////
////                        if(deliveryDoneYesVal)
////                          myCampaignData.isDelivery = deliveryDoneYesVal;
////                        else if(deliveryDoneNoVal)
////                          myCampaignData.isDelivery = false;
////
////                        myCampaignData.rationDeliveredBy = call2rationDeliveryStatusTextController.text.toString().trim();
////                        myCampaignData.rationDeliveredDateTime = call2dateOfRationDeliveredTextController.text.toString().trim();
////
////                        if(oTPMatchYesVal)
////                        myCampaignData.otpMatched = oTPMatchYesVal;
////                        else if(OTPMatchNoVal)
////                          myCampaignData.otpMatched = false;
////
////                        myCampaignData.otpMismatchReason = deliveryReasonType.toString().trim();
////                        myCampaignData.sentToVendor = sentToDelivery;
//
//                        call1Data.howDidYouHear = new List<String>();
//                        if(friendsVal == true)
//                          call1Data.howDidYouHear.add(friends);
//                        else if(advertisementVal == true)
//                          call1Data.howDidYouHear.add(advertisement);
//                        else if(othersVal == true)
//                          call1Data.howDidYouHear.add(Others);
//                        else if(otherBenificiaryVal == true)
//                          call1Data.howDidYouHear.add(otherBenificiary);
//                        else if(socialVal == true)
//                          call1Data.howDidYouHear.add(socialMedia);
//                        else if(kpfVal == true){
//                          call1Data.referredByName = KpfNameType;
//                          call1Data.howDidYouHear.add(kPFValue);
//                        }else if(spncrVal == true){
//                          call1Data.referredByName = sponcersVal;
//                          call1Data.howDidYouHear.add(sponsors );
//                        }
//
//                        call1Data.applyingForSelf = benificiaryType;
//                        call1Data.verificationCallApproved = verifiedForCall2Val;
//                        call1Data.lockdownEffectOnFamily = benRemarksforCall1TextController.text.toString().trim();
//                        familyAddress.room = benHouseNoTextController.text.toString().trim();
//                        familyAddress.locality = benLocalityTextController.text.toString();
//                        familyAddress.street = benStreetTextController.text.toString();
//                        familyAddress.landmark = benLandMarkTextController.text.toString().trim();
//                        familyAddress.city = "Kanpur";
//                        familyAddress.building = benCityTextController.text.toString().trim();
//                        familyAddress.zipCode = benPincodeTextController.text.toString().trim();
//
//
//                        if(hotZoneYesVal==true)
//                          familyAddress.hotZoneAreaStatus = "Hot Zone";
//                        else if(hotZoneNoVal==true)
//                          familyAddress.hotZoneAreaStatus = "Not in HotZone";
//                        else if(hotZoneOtherVal==true)
//                          familyAddress.hotZoneAreaStatus = " Don't Know";
//
//                        if(areaUnderNagarNYesVal)
//                          familyAddress.inKanpurNagarNigam = "YES";
//                        else if(areaUnderNagarNiNoVal)
//                          familyAddress.inKanpurNagarNigam = " NO";
//                        else if(areaUnderNagarNiOtherVal)
//                          familyAddress.inKanpurNagarNigam = "Don't Know";
//
////                        myCampaignData.callerName = nameController.text.toString().trim();
////                        myCampaignData.howDidYouHear = new List<String>();
////                        if(friendsVal == true)
////                        myCampaignData.howDidYouHear.add(friends);
////                        else if(advertisementVal == true)
////                        myCampaignData.howDidYouHear.add(advertisement);
////                        else if(othersVal == true)
////                        myCampaignData.howDidYouHear.add(Others);
////                        else if(otherBenificiaryVal == true)
////                        myCampaignData.howDidYouHear.add(otherBenificiary);
////                        else if(socialVal == true)
////                        myCampaignData.howDidYouHear.add(socialMedia);
////                        else if(kpfVal == true){
////                          myCampaignData.referredByName = KpfNameType;
////                          myCampaignData.howDidYouHear.add(kPFValue);
////                        }else if(spncrVal == true){
////                          myCampaignData.referredByName = sponcersVal;
////                          myCampaignData.howDidYouHear.add(sponsors );
////                        }
//
////                        myCampaignData.applyingForSelf = benificiaryType;
////                        myCampaignData.verificationCallApproved = verifiedForCall2Val;
////                        myCampaignData.introCallRemarks = benRemarksforCall1TextController.text.toString().trim();
////                        familyData.headName = nameController.text.toString().trim();
////                        familyData.headAge = camp_age_textController.text.toString().trim();
////                        familyData.headMobile = benContactNumberTextController.text.toString().trim();
//////                        familyAddress.verficationAddress = call2ConfirmAddressTextController.text.toString().trim();
//////                        familyAddress.verficationPinCode = call2ConfirmPincodeTextController.text.toString().trim();
//////
//////                        if(adMisMatchYesVal)
//////                        familyAddress.isAddressSame = adMisMatchYesVal;
//////                        else if(adMisMatchNoVal)
//////                          familyAddress.isAddressSame = false;
//////
//////                        familyAddress.mismatchReason = call2ReasonMismatchTextController.text.toString().trim();
//////                        aadhar.aadharVerificationStatus = aadhAvailabilityType.toString();
//////                        aadhar.aadharNumber = call2AadharNumberTextController.text.toString().trim();
//////
//////                        if(gettingRationYesVal)
//////                        rationdata.rationReceived = gettingRationYesVal;
//////                        else if(gettingRationNoVal)
//////                          rationdata.rationReceived = false;
////
//////                        if(call2RationCardUnitTextController != null)
//////                        rationdata.RationCardUnits = int.parse(call2RationCardUnitTextController.text.toString().trim());
//////                        rationdata.rationNotFoundReason = call2ReasonNoRationCardTextController.text.toString().trim();
//////                        rationdata.rationNotFoundReasonAnswer = reasonNotGettingRationType.toString().trim();
////
//////                        if(call2TotalNoOfFamilyMemberTextController!= null)
//////                        familyData.numberOfMembers = int.parse(call2TotalNoOfFamilyMemberTextController.text.toString().trim());
//////                       if(call2below14YearMemberTextController!= null)
//////                        familyData.numberOfChild = int.parse( call2below14YearMemberTextController.text.toString().trim());
//////                       if(call2AboveOr14YearsMemberTextController != null)
//////                       familyData.numberOfAdult = int.parse(call2AboveOr14YearsMemberTextController.text.toString().trim());
//////                        familyData.headName = call2NameofFamilyHeadTextController.text.toString().trim();
////
//////                        familyData.familyMember = new List<FamilyMember>();
//////                        familyData.familyMember.addAll(fmembers);
//////                        familyEmpData.lockdownEffectOnFamily = call2HowLockdownAffectTextController.text.toString().trim();
//////                        if(call2IncomebeforeLockdownTextController!= null)
//////                        familyEmpData.incomeBefore = int.parse(call2IncomebeforeLockdownTextController.text.toString().trim());
//////                        if(call2IncomeafterLockdownTextController!= null)
//////                        familyEmpData.incomeCurrent = int.parse(call2IncomeafterLockdownTextController.text.toString().trim());
//////                        familyEmpData.anyOtherProblem = call2TellMeSomethingMoreAboutTextController.text.toString().trim();
//////                        referenceData.name = call2NameVerifiedByTextController.text.toString().trim();
//////                        referenceData.number = contactVerifiedByTextController.text.toString().trim();
//////                        referenceData.relationship = call2RelationVrefiedByTextController.text.toString().trim();
//////                        myCampaignData.isVerificationCall = verificationCallVal;
//////                        myCampaignData.referenceChecked = referenceCheckVal;
//////                        myCampaignData.verificationStatusCH = selectBenType.toString();
//////                        myCampaignData.verifiedByCHRemark = call2RemarksByOperatorTextController.text.toString().trim();
//////                        myCampaignData.verifiedByKPFMember = KpfName2Type.toString();
//////
//////                        if(goCheckVal)
//////                        myCampaignData.verificationStatusKPF = "GO";
//////                        else if(noGoCheckVal)
//////                          myCampaignData.verificationStatusKPF = "Not-GO";
//////
//////                        myCampaignData.verifiedByKPFDate = call2dateOfRemarkbyKPFTextController.text.toString().trim();
//////                        myCampaignData.verifiedByKPFRemark = call2RemarksByKPFCommentsTextController.text.toString().trim();
//////
//////                        if(deliveryDoneYesVal)
//////                          myCampaignData.isDelivery = deliveryDoneYesVal;
//////                        else if(deliveryDoneNoVal)
//////                          myCampaignData.isDelivery = false;
//////
//////                        myCampaignData.rationDeliveredBy = call2rationDeliveryStatusTextController.text.toString().trim();
//////                        myCampaignData.rationDeliveredDateTime = call2dateOfRationDeliveredTextController.text.toString().trim();
//////
//////                        if(oTPMatchYesVal)
//////                        myCampaignData.otpMatched = oTPMatchYesVal;
//////                        else if(OTPMatchNoVal)
//////                          myCampaignData.otpMatched = false;
//////
//////                        myCampaignData.otpMismatchReason = deliveryReasonType.toString().trim();
//////                        myCampaignData.sentToVendor = sentToDelivery;
//
//
////                        familyData.familyCampaignDetails = myCampaignData;
////                        familyData.familyAadhar = aadhar;
////                        familyData.familyRation = rationdata;
////                        familyData.employeeReference = referenceData;
////                        familyData.familyAddress = familyAddress;
////                        familyData.employment = familyEmpData;
////                        familyData.numberOfWorkingMembers = 0;
//                        call1Data.familyAddress = familyAddress;
//                        familyRecords.call1 = call1Data;
//                        familyRecords.campaignStatus = campStatus;
//                        familyRecords.rationDelivery = rationDel;
//                        familyRecords.createDate = "";
//                        familyRecords.updateDate = DateTime.now().toString().substring(0, 10);
////
//                        create_campaign_ApiCall( familyRecords);
//
//
//
//
//
//
//
//
//
//
////
////                        List<Family> campaignData = new List<Family>();
////                        campaignData.add(familyData);
////                        campaignData.add(name);
////                        campaignData.add(kpfName);
////                        campaignData.add(othersources);
////                        campaignData.add(age);
////                        campaignData.add(benHouseNo);
////                        campaignData.add(benLocalilty);
////                        campaignData.add(benBuilding);
////                        campaignData.add(benCity);
////                        campaignData.add(benContactNumber);
////                        campaignData.add(call2ConAdd);
////                        campaignData.add(call2ConPin);
////                        campaignData.add(call2ReasonMismatch);
////                        campaignData.add(call2RationCardUnit);
////                        campaignData.add(call2ReasonNoRationCArd);
////                        campaignData.add(call2RationCardOther);
////                        campaignData.add(call2NoOfFamilyMemeber);
////                        campaignData.add(call2below14Member);
////                        campaignData.add(call2Above14Member);
////                        campaignData.add(call2NameofFamilyHead);
////                        campaignData.add(addMember);
////                        campaignData.add(call2HowLockdownAffect);
////                        campaignData.add(call2IncomebeforeLockdown);
////                        campaignData.add(call2IncomeafterLockdown);
////                        campaignData.add(call2OtherResasonAffectedBy);
////                        campaignData.add(call2TellMeSomethingMoreAbout);
////                        campaignData.add(call2NameVerifiedBy);
////                        campaignData.add(contactVerifiedBy);
////                        campaignData.add(call2RelationVrefiedBy);
////                        campaignData.add(call2VerfiedRemarks);
////                        campaignData.add(call2RemarksByCHOperator);
////                        campaignData.add(call2RemarksByKPFOperator);
////                        campaignData.add(call2RationDeliveredBy);
////                        campaignData.add(call2RationDeliveredDate);
////                        campaignData.addAll(members);
////                        CommonData.saveCampaignData(campaignData);
//                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Dashboard(name: name,age: age, contactNumber: benContactNumber,address: call2ConAdd,)));
//                        Toast.show("Your data has been saving..", context, gravity:Toast.CENTER, duration: Toast.LENGTH_LONG);
////    Scaffold.of(context)
////    ..removeCurrentSnackBar()
////    ..showSnackBar(SnackBar(content: Text("Your Data has been saving...")));
//
//
//                      },
//                      child: Text("Submit",
//                        style: TextStyle(
//                            color: Colors.white
//                        ),),
//                    ),
//                  ),
//                ),
//              ),
//              SizedBox(
//                height: 30.0,
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Color hexToColor(String code) {
//
//    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
//  }
//
//
////  void create_campaign_ApiCall(Family myfamily) async {
//////  var config = new AppConfig().of(context);
//////  String baseUrl = config.apiBaseUrl;
//////    ProgressDialog pr = new ProgressDialog(context,
//////        type: ProgressDialogType.Normal, isDismissible: true, showLogs: true);
//////    pr.style(message: "please wait..");
//////    pr.show();
////    String baseUrl = "http://localhost:8080/MalikAPI/webapi/sahyog/saveFamily";
//////    var getApiUrl = baseUrl + 'post/create';
////    Dio dio = new Dio();
////    FormData formData = new FormData();
////    Map<dynamic, dynamic> myResponse = new Map();
////    //eventDate=eventDate+ " 00:00:00.0";
////    Map userData = {
////
////    };
////
////    var body = jsonEncode(myfamily);
////    print(body);
////
//////    formData.add(
//////        "media", new UploadFileInfo(imagePath, path.basename(imagePath.path)));
////
////
////    formData.add("post", body);
////    var response = await dio
////        .post(baseUrl,
////        data: formData,
////        options: Options(
////          method: "POST",
////          responseType: ResponseType.json,
////        ))
////        .then((response) => {myResponse = response.data, print(response)})
////        .catchError((error) => print(error));
////
////    print(myResponse.values);
////    String statusCode = myResponse['statusCode'];
////    String message = myResponse['message'];
////
////    if (statusCode == "200") {
////      Toast.show(message, context, duration: Toast.LENGTH_SHORT, gravity: 0);
////    } else {
////      Toast.show(message, context, duration: Toast.LENGTH_SHORT, gravity: 0);
////    }
////  }
//
//  Future<http.Response> create_campaign_ApiCall(FamilyRecord myfamily) async {
//
//    String baseUrl = Constants.baseURL;
//    var getApiUrl = baseUrl + 'sahyog/createFamily';
//    //encode Map to JSON
//    var body = jsonEncode(myfamily);
////    json.decode(myfamily.toString());
//    print(body);
//
////  todo - you should check the response.statusCode
//
//    var response = await http.post(getApiUrl,
//        headers: {"Content-Type": "application/json"}, body: body);
//
//    print("${response.statusCode}");
//
//    Map jsonData = json.decode(response.body);
////    Map baseResponse = jsonData['baseResponse'];
////    String message = baseResponse['message'];
//    String statusCode = jsonData['statusCode'];
//
//    if (statusCode == "200") {
//
//      Toast.show("Success", context, duration: Toast.LENGTH_LONG, gravity: 0);
//    } else {
////      pr.dismiss();
//      Toast.show("Faild Response", context, duration: Toast.LENGTH_LONG, gravity: 0);
//    }
//
//    print("${response.body}");
//
////    setState(() {
////      var jsonObject = json.decode(response.body);
////      Map postData = new Map();
////      postData = jsonData;
////      eventList = postData["posts"];
////      postItem.addAll(eventList);
////      print("helo");
////      print(postItem.length);
////      print("${jsonObject}");
////    });
//    await Future.delayed(Duration(seconds: 0));
//    return response;
//  }
//
//}
