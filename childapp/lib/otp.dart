import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
void main() {
   runApp(MaterialApp(
    title: 'OTP',
    home: Otppage(),
  ));
}
class Otppage extends StatelessWidget
{
@override
Widget build(BuildContext context)
  {
     return Scaffold(
      appBar: GradientAppBar(
        title: Text('OTP',
        style: TextStyle(color: Colors.black)
        ),
        backgroundColorStart: Colors.red,
    backgroundColorEnd: Colors.indigo,
      ),
      body: Center(
       
      ),
    );
  }
}