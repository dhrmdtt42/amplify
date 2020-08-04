import 'dart:io';

import 'package:amplify_app/view_widget/circuLar_progress.dart';
import 'package:amplify_app/view_widget/loginDetails.dart';
import 'package:amplify_app/view_widget/progress_bar.dart';
import 'package:amplify_app/view_widget/social_login.dart';
import 'package:amplify_app/view_widget/tabs/sign_up.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  bool isAction = false;
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  ProgressBar _sendingMsgProgressBar;

  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  @override
  void showSendingProgressBar() {
    _sendingMsgProgressBar.show(context);
  }

  @override
  void hideSendingProgressBar() {
    _sendingMsgProgressBar.hide();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sendingMsgProgressBar = ProgressBar();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios)),

      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(child: Image.asset("assets/amply_logo.png"))),
              Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: userNameController,
              style:GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 14.0
              ),
              decoration: InputDecoration(

                hintText: 'Username or Email address',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins-Regular",
                  color: Colors.white,
                  fontSize: 14.0
                ),

                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              onEditingComplete: (){
                String value = userNameController.text.toString();
               bool boobs =  validateEmail(value);
               print("ye le tera result agya=====================???????? $boobs");
               if(boobs == false){
                 userNameController.text = "";
                 Toast.show("please enter the correct email",context,textColor: Colors.red,  gravity: 1, duration: Toast.LENGTH_LONG);
               }
              },
            ),
          ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  style:  GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 14.0
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins-Regular",
                        color: Colors.white,
                        fontSize: 14.0
                    ),

                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, top: 0.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forgotten Password?",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12.0
                    ),),
                  )),
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
                        child: RaisedButton(
                          onPressed: ()  async{
                          String userEmail = userNameController.text.toString();
                          String pass = passController.text.toString();
                          bool femaleboobs = validateEmail(userEmail);
                          if(femaleboobs == true && userEmail != null && pass != null){
                           isAction = true;
                           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> CirculaProgressScreen(mailid: userEmail,)));

//                           showSendingProgressBar();
//                           await new Future.delayed(const Duration(seconds: 5), (){
//                             setState(() {
//                               hideSendingProgressBar();
//                             });
//                           });
                          }else{
                            userNameController.text = "";
                            Toast.show("please enter the correct email",context,textColor: Colors.red,  gravity: 1, duration: Toast.LENGTH_LONG);
                          }
                        },
                          child: Text('LOG IN', style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14.0
                          ),),
                          color:_colorFromHex("#f2d493"),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(25.0),
                              side: BorderSide(color:
                              _colorFromHex("#f2d493")
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0,right: 10.0),
                      child: Container(
                          height: 24.0,
                          width: 24.0,
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SocialLoginPage()));
                              },
                              child: Image.asset("assets/fb_logo.png"))),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 16.0, top: 0.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SocialLoginPage()));
                            },
                            child: Text("Continue with Facebook",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12.0
                              ),),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 32.0,
                      width: 32.0,
                      child: InkWell(
                          onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SocialLoginPage()));
                      },
                          child: Image.asset("assets/google_logo.jpg",)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 16.0, top: 0.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SocialLoginPage()));
                            },
                            child: Text("Continue with Google",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12.0
                              ),),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 52.0, bottom:40.0, right: 32.0, left: 32.0),
                child: Divider(color: Colors.grey, thickness: 2.0,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom:42.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text("Don't have an account?",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12.0
                        ),),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SignUpPage()));
                        },
                        child: Text("Sign up",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12.0,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
