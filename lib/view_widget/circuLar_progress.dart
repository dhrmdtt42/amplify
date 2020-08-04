import 'package:amplify_app/view_widget/loginDetails.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CirculaProgressScreen extends StatefulWidget {
  final String mailid;
  CirculaProgressScreen({@required this.mailid});

  @override
  _CirculaProgressScreenState createState() => _CirculaProgressScreenState();
}

class _CirculaProgressScreenState extends State<CirculaProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: CircularCountDownTimer(width: 100.0, height: 100.0,
          duration: 5, fillColor: Colors.red,
          color: Colors.white,
          onComplete: (){
//            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
//                UserLoginDetails(userEmail: widget.mailid,)), (Route<dynamic> route) => false);
//          Navigator.pushNamedAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=> UserLoginDetails()), (route) => false);
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> UserLoginDetails(userEmail: widget.mailid,)));
            print(" chal tera time khatam BKL ==================>>>>>>>>>");
          },
        ),
      ),
    );
  }
}
