import 'package:amplify_app/view_widget/login_page.dart';
import 'package:amplify_app/view_widget/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginDetails extends StatefulWidget {
  final String photoUrl;
  final String username;
  final bool isLogIn;
  GoogleLoginDetails({@required this.photoUrl,@required this.username, @required this.isLogIn});

  @override
  _GoogleLoginDetailsState createState() => _GoogleLoginDetailsState();
}

class _GoogleLoginDetailsState extends State<GoogleLoginDetails> {
  bool _isLoggedIn = false;
  String imageUrl;
  String g_username;

  Map userProfile;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageUrl = widget.photoUrl;
    g_username = widget.username;
   _isLoggedIn = widget.isLogIn;
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                  child: _isLoggedIn
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(imageUrl, height: 50.0, width: 50.0,),
                      Text(g_username),
                      OutlineButton( child: Text("Logout"), onPressed: (){
                        _logout();
                      },)
                    ],
                  )
                      : Center(
                    child: OutlineButton(
                      child: Text("Login with Google"),
                      onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>
                           SocialLoginPage(g_login: _isLoggedIn)));
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
