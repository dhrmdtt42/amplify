import 'package:amplify_app/utils/common_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SecondSignUpTab extends StatefulWidget {
  @override
  _SecondSignUpTabState createState() => _SecondSignUpTabState();
}

class _SecondSignUpTabState extends State<SecondSignUpTab> {
  CommonData commonData = new CommonData();
  String _passError;
  String _cnfpassError;
  TextEditingController passwordCOntroller = new TextEditingController();
  TextEditingController cnfPassController = new TextEditingController();


  validate() {
    if (!commonData.validateStructure(passwordCOntroller.text)) {
      setState(() {
        _passError = "your password "+ passwordCOntroller.text.toString()+ "  incorrect ";
//      if(validate== true){
//        _passError = "";
        print("******************************************* $_passError");
//      }
      });
    }
    else{
      setState(() {
//        passwordCOntroller.text = "";
        _passError = "";
        print("*******************************************");
      });

    }
  }

      // show dialog/snackbar to get user attention.




  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(top: 20.0,bottom:20.0,left: 20.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Text("Choose a password",
                     style: GoogleFonts.poppins(
                         color: Colors.black,
                         fontSize: 16.0,
                         fontWeight: FontWeight.bold
                     ),),
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: TextField(
               controller: passwordCOntroller,
               onEditingComplete: (){
                 validate();
               },
               style:GoogleFonts.poppins(
                   fontWeight: FontWeight.normal,
                   color: Colors.black,
                   fontSize: 14.0
               ),
               decoration: InputDecoration(
                 hintText: 'Password',
                 errorText: _passError,
                 hintStyle: GoogleFonts.poppins(
                     fontWeight: FontWeight.normal,
                     color: Colors.black,
                     fontSize: 14.0
                 ),
                 border: const OutlineInputBorder(),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                   borderSide: BorderSide(color: Colors.black),
                 ),
               ),
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
               controller: cnfPassController,
               obscureText: true,
               onEditingComplete: (){
                 String cnfPass = cnfPassController.text.toString();
                 String pass = cnfPassController.text.toString();
                 if(cnfPass == pass){
                   setState(() {
                     _cnfpassError = "please enter the same password";
                   });
                 }
               },
               decoration: InputDecoration(

                 hintText: 'Confirm Password',
                 errorText: _cnfpassError,
                 hintStyle: GoogleFonts.poppins(
                     fontWeight: FontWeight.normal,
                     color: Colors.black,
                     fontSize: 14.0
                 ),
                 border: const OutlineInputBorder(),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                   borderSide: BorderSide(color: Colors.black),
                 ),
               ),
             ),
           ),
           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
             IconButton(icon: Icon(Icons.clear, color: Colors.red,size: 20.0,), onPressed: null,
             color: Colors.red,),
               Text("Minimum of 8 Characters",
                 style: GoogleFonts.poppins(
                     color: Colors.red,
                     fontSize: 14.0
                 ),),
             ],
           ),
           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               IconButton(icon: Icon(Icons.clear, color: Colors.red,size: 20.0,), onPressed: null,
                 color: Colors.red,),
               Text("A capital letter",
                 style: GoogleFonts.poppins(
                     color: Colors.red,
                     fontSize: 15.0
                 ),),
             ],
           ),
           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               IconButton(icon: Icon(Icons.clear, color: Colors.red, size: 20.0,), onPressed: null,

                 color: Colors.red,),
               Text("A lowercase letter",
                 style: GoogleFonts.poppins(
                     color: Colors.red,
                     fontSize: 14.0
                 ),),
             ],
           ),
           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               IconButton(icon: Icon(Icons.clear, color: Colors.red,size: 20,), onPressed: null,
               iconSize: 20,
                 color: Colors.red,
               ),
               Text("A number",
                 style: GoogleFonts.poppins(
                     color: Colors.red,
                     fontSize: 14.0
                 ),),
             ],
           ),
           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               IconButton(icon: Icon(Icons.clear, color: Colors.red, size: 20.0,), onPressed: null,
                 color: Colors.red,),
               Text("Both boxes match",
                 style: GoogleFonts.poppins(
                     color: Colors.red,
                     fontSize: 14.0
                 ),),
             ],
           ),
           SizedBox(height: 100.0,),
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
                       onPressed: (){

                       },
                       child: Text(' Continue ', style: GoogleFonts.poppins(
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                           fontSize: 14.0
                       ),),
                       color:commonData.colorFromHex("#f2d493"),
                       shape: RoundedRectangleBorder(
                           borderRadius:BorderRadius.circular(25.0),
                           side: BorderSide(color:
                           commonData.colorFromHex("#f2d493")
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
