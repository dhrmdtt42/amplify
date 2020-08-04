import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class FbDetails extends StatefulWidget {
  final Map fbUserProfile;
  final bool isLogIn;
  FbDetails({@required this.fbUserProfile, @required this.isLogIn});

  @override
  _FbDetailsState createState() => _FbDetailsState();
}

class _FbDetailsState extends State<FbDetails> {
  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();

  _logout(){
    facebookLogin.logOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userProfile = widget.fbUserProfile;
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
                child: _isLoggedIn
                    ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(userProfile["picture"]["data"]["url"], height: 50.0, width: 50.0,),
                    Text(userProfile["name"]),
                    OutlineButton( child: Text("Logout"), onPressed: (){
                      _logout();
                    },)
                  ],
                )
                    : Center(
                  child: OutlineButton(
                    child: Text("Login with Facebook"),
                    onPressed: () {
                     Navigator.of(context).pop();
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
