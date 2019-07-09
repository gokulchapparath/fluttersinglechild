import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
        title: Text('First Route',
        style: TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.amberAccent,
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
                        splashColor: Colors.blue[50],
                        textColor: Colors.white,
                        child: Text('click here for next page',
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
        title: Text("Second Route",
         style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amberAccent,
      ),
     body:
  
     Container(
       child: new Image.asset('assets/images/nat.jpg',
       height:1350,
       fit: BoxFit.fill,
       ),
       
        
      ),
     
    );
  }
}