import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child:  MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Mypage2()),
            );
            },
                        splashColor: Colors.blueAccent,
                        textColor: Colors.white,
                        child: Text('Create Account',
                        style:TextStyle(fontSize: 18)),
                        minWidth: 350,
                        height: 50,
                        ),
      ),
    );
  }
}

class Mypage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
     /* body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),*/
    );
  }
}