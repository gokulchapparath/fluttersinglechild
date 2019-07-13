import 'package:flutter/material.dart';
import 'home.dart';
import 'otp.dart';
import 'main.dart';
class Drawers extends StatefulWidget {
   final String user2;
  Drawers({Key key, this.user2}) : super (key: key); 
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
                   
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Center(
              child: new Image.asset(
              'assets/images/cat.png',
               fit: BoxFit.fill,
               
            ),
          
            ),
           // DrawerHeader(
           Center(
             child: Text("${widget.user2}"),
           )  , 
              
              
          
              
            //),
            ListTile(
              
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new Myapp()),
      );
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
            ListTile(
              
              title: Text('page 1'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new FirstRoute()),
      );
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
            ListTile(
              title: Text('mypage'),
              onTap: () {
                Navigator.pop(context);
                  Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new Mypage2()),
      );
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
            ListTile(
              title: Text('NEW'),
              onTap: () {
                 Navigator.pop(context);
                Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new Newpage()),
      );
                // Update the state of the app
                // ...
                // Then close the drawer
              
              
              },
            ),
          ],
        ),
      ),
      
    );
  }
}