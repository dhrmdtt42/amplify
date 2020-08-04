import 'dart:convert';
import 'package:amplify_app/utils/common_data.dart';
import 'package:amplify_app/view_widget/fb_details.dart';
import 'package:amplify_app/view_widget/glogin_details.dart';
import 'package:amplify_app/view_widget/tabs/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class SocialLoginPage extends StatefulWidget {
  final bool g_login;
  SocialLoginPage({@required this.g_login});

  @override
  _SocialLoginPageState createState() => _SocialLoginPageState();
}

class _SocialLoginPageState extends State<SocialLoginPage> {

  CommonData commonData = new CommonData();
  bool _isLoggedIn = false;
  Map userProfile;
  FacebookLogin  facebookLogin = FacebookLogin();

 void _loginWithFB() async{

   final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
        final profile = jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          userProfile = profile;
          _isLoggedIn = true;
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> FbDetails(fbUserProfile: profile, isLogIn: _isLoggedIn,)));
        });
        break;
      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false );
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false );
        break;
    }
  }

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _gmlogin() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
        String photo_url = _googleSignIn.currentUser.photoUrl;
        String userName = _googleSignIn.currentUser.displayName;
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> GoogleLoginDetails(photoUrl: photo_url,username: userName, isLogIn: _isLoggedIn)));
      });
    } catch (err){
      print(err);
    }
  }




  _fblogout(){
    facebookLogin.logOut();
    setState(() {
      _isLoggedIn = false;
    });
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
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Center(child: Image.asset("assets/amply_logo.png"))),
                  Padding(
                      padding: const EdgeInsets.only(right: 16.0, top: 20.0, left: 16.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("GAIN BACK CONTROL \n\t\t\t\t\t\tOF YOUR LIFE",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.0
                          ),),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, left: 24.0, right: 24.0,),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width:325.0,
                            height: 42.0,
                            child: RaisedButton(onPressed: () {},
                              child: Row(
                                children: <Widget>[

                                  Container(
                                    height: 32.0,
                                    width: 32.0,
                                    child: InkWell(
                                        onTap: (){
                                          _loginWithFB();
//                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SocialLoginPage()));
                                        },
                                        child: Image.asset("assets/fb_logo.png",)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
                                        _loginWithFB();
                                      },
                                      child: Text('SIGN UP WITH FACEBOOK', style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 14.0
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                              color: Colors.blueAccent,
//                              commonData._colorFromHex(),
                              shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(25.0),
                                  side: BorderSide(color: Colors.blue,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0,),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width:325.0,
                            height: 42.0,
                            child: RaisedButton(onPressed: () {},
                              child: Row(
                                children: <Widget>[

                                  Container(
                                    height: 32.0,
                                    width: 32.0,
                                    child: InkWell(
                                        onTap: (){
                                          _gmlogin();
//                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SocialLoginPage()));
                                        },
                                        child: Image.asset("assets/google_login.png",)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
                                        _gmlogin();
                                      },
                                      child: Text('SIGN UP WITH GOOGLE', style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 14.0
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                              color: Colors.white,
//                              commonData._colorFromHex(),
                              shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(25.0),
                                  side: BorderSide(color: commonData.colorFromHex("#f2d493"),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 52.0,bottom:42.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SignUpPage()));
                            },
                            child: Text("Sign up with Email address",
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
                          child: Text("Sign up",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
