import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class ProgressBar {

  OverlayEntry _progressOverlayEntry;

  void show(BuildContext context){
    _progressOverlayEntry = _createdProgressEntry(context);
    Overlay.of(context).insert(_progressOverlayEntry);
  }

  void hide(){
    if(_progressOverlayEntry != null){
      _progressOverlayEntry.remove();
      _progressOverlayEntry = null;
    }
  }

  OverlayEntry _createdProgressEntry(BuildContext context) =>
      OverlayEntry(
          builder: (BuildContext context) =>
              Stack(
                children: <Widget>[
                  Container(
                    color: Colors.transparent.withOpacity(0.5),
                  ),
                  Positioned(
                    top: screenHeight(context) / 2,
                    left: screenWidth(context) / 2,
                    child:  CircularProgressIndicator()
                  )

                ],

              )
      );

  double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

//  CircularCountDownTimer(width: 100.0, height: 100.0,
//  duration: 5, fillColor: Colors.red,
//  color: Colors.white,
//  onComplete: (){
////          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> UserLoginDetails(userEmail: userEmail,)));
//  print(" chal tera time khatam BKL ==================>>>>>>>>>");
//  },
//  ),
}
