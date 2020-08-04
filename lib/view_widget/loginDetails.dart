import 'package:amplify_app/view_widget/login_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
class UserLoginDetails extends StatefulWidget {
  final String userEmail;
  final String password;
  UserLoginDetails({@required this.userEmail, @required this.password});

  @override
  _UserLoginDetailsState createState() => _UserLoginDetailsState();
}

class _UserLoginDetailsState extends State<UserLoginDetails> {
  String email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     email = widget.userEmail;
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
      body: widget.userEmail == null? CircularCountDownTimer(width: 100.0, height: 100.0,
        duration: 5, fillColor: Colors.red,
        color: Colors.white,
        onComplete: (){
//          String userEmail = userNameController.text.toString();
//          String pass = passController.text.toString();
//          bool femaleboobs = validateEmail(userEmail);
          print(" chal tera time khatam BKL ==================>>>>>>>>>");

        },
      ): Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("HELLO $email"),
                      OutlineButton(child: Text("GO BACK"), onPressed: (){
//                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
//                            LoginPage()), (Route<dynamic> route) => false);
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> LoginPage()));
                      },)
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
