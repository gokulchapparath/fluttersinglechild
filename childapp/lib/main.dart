import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
void main() => runApp(Tests());

class Tests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Myapp(),
      
  
    );
  }
}
class Myapp extends StatelessWidget
{
  Myapp({Key key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
     var _full= TextEditingController();
     var _user= TextEditingController();
     var _pass= TextEditingController();
     var _email= TextEditingController();
     var _phone= TextEditingController();
     final FocusNode _fullf = FocusNode();
     final FocusNode _userf = FocusNode();
     final FocusNode _passf = FocusNode();
     final FocusNode _emailf = FocusNode();
     final FocusNode _phonef = FocusNode();
  
    return new Scaffold(
    //builder:(BuildContext context,BoxConstraints viewportConstraints){
  appBar: AppBar(
        title: Text('Sign up',
       style: TextStyle(color: Colors.black),),
       bottomOpacity: 1.0,
       backgroundColor: Colors.white,
      ),
    body:
     
    new SingleChildScrollView(
      
      padding: EdgeInsets.all(15.0),
     
        child: Column(
               
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
               color: Colors.white,
              child:RawMaterialButton(onPressed: null,
            child:new Icon(Icons.add_a_photo,color: Colors.orange,size: 150,),
            shape: new CircleBorder(),
            padding:const EdgeInsets.all(20.0)),
            ),
          
          Container(
             color: Colors.white,
            child:TextFormField(decoration: InputDecoration(labelText: 'FULLNAME',alignLabelWithHint: true,hintText: 'Enter full name'),textInputAction: TextInputAction.next,
            controller: _full,
        focusNode: _fullf,
        onFieldSubmitted: (term){
          _fieldFocusChange(context, _fullf, _userf);
                  },
                      ),
                    ),
                     
                     Container(
                        color: Colors.white,
                      child:TextFormField(decoration: InputDecoration(labelText: 'USERNAME',alignLabelWithHint: true,hintText: 'eg:@user_name'),
                      textInputAction: TextInputAction.next,
                      controller: _user,
        focusNode: _userf,
        onFieldSubmitted: (term){
          _fieldFocusChange(context, _userf, _passf);
                  }),
                     
                     ),
          
                     Container(
                        color: Colors.white,
                      child:TextFormField(decoration: InputDecoration(labelText: 'PASSWORD',alignLabelWithHint: true,hintText: 'Min 8 characthers'),obscureText: true,textInputAction: TextInputAction.next,
                       controller: _pass,
        focusNode: _passf,
        onFieldSubmitted: (term){
          _fieldFocusChange(context, _passf, _emailf);
                  }),
                  ),
                     
                     Container(
                        color: Colors.white,
                      child:TextFormField(decoration: InputDecoration(labelText: 'EMAIL',alignLabelWithHint: true,hintText: 'eg:name@example.com',),
                       keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.next,
                        controller: _email,
        focusNode: _emailf,
        onFieldSubmitted: (term){
          _fieldFocusChange(context, _emailf, _phonef);
                  }),
                     ),

                     Container(
                        color: Colors.white,
                       child:TextFormField(decoration: InputDecoration(labelText: 'PHONE',alignLabelWithHint: true,hintText: 'eg:9876543210'),
                      keyboardType: TextInputType.phone,textInputAction: TextInputAction.done,focusNode: _phonef,
                      
                      ),
                     ),
          
                      Container(
                          child:  MaterialButton(
                        color: Colors.orange,
                        onPressed: (){},
                        splashColor: Colors.blueAccent,
                        textColor: Colors.white,
                        child: Text('Create Account',
                        style:TextStyle(fontSize: 18)),
                        minWidth: 350,
                        height: 50,
                        ),
                      ),
                      
                    ],
                  ),
                  
                ),
              
          
            );
            
            }
          
           _fieldFocusChange(BuildContext context, FocusNode currentFocus,FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
           
  }
   
  
}