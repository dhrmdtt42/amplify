import 'package:amplify_app/utils/common_data.dart';
import 'package:amplify_app/view_widget/tabs/first_signup_tab.dart';
import 'package:amplify_app/view_widget/tabs/second_signup_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>  with SingleTickerProviderStateMixin{
  static CommonData commonData = new CommonData();
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text("SIGN UP",
        style: GoogleFonts.poppins(
            color:commonData.colorFromHex("#f2d493"),
            fontSize: 18.0,
            fontWeight: FontWeight.bold
        ),),),
    Tab(child: Text(""),)
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController( vsync:this,  length: myTabs.length);
  }

  changeMyTab(){
    setState(() {
      _tabController.index = 1;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          leading: InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios)),

          bottom: TabBar(
            indicatorColor: commonData.colorFromHex("#f2d493"),
            tabs:myTabs,
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget> [
            FirstSignUpTab(onTabChangeCallback: () => {
              changeMyTab()
            },),
//          FirstSignUpTab(),
          SecondSignUpTab(),
        ],

        )
      ),
      length: 2,
      initialIndex: 0,
    );
  }
}
