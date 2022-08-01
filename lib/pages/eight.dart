import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class eight extends StatefulWidget {
  const eight({Key key}) : super(key: key);

  @override
  State<eight> createState() => _eightState();
}

class _eightState extends State<eight> {
   final _formkey = GlobalKey<FormState>();
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    var userTextController = TextEditingController();
    var _userErrText;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        key:_scaffoldKey,
      appBar: AppBar(title: 
      Text("Form Handling")),
      body: Form(
      
        key: _formkey,
        // key:_scaffoldKey,
       child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
         child: Column(
          children: [
            TextFormField(
              controller: userTextController,
              decoration: InputDecoration(
                labelText: "username",
                prefix: Icon(Icons.person),
                suffix: Icon(Icons.delete),
                // hintText: "Must Be captial Letter",
                helperText: "Not include number",
                errorText: _userErrText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ), 
                // focusedBorder: 
              ),
              onChanged: (value) {
                if(value.isNotEmpty){
                  
                  setState(() {
                    _userErrText = null;
                  });
                }
              },
              validator :(value){
                print(value + "heh");
                  if(value.isEmpty){
                    _userErrText = "You need to be unique";
                    setState(() {
                      
                    });
                    return "You need to be unique";
                  }
                  if(value.length < 5){
                    _userErrText = "More than 4 chars";
                    setState(() {
                      
                    });
                    return "More than 4 chars";
                  }
                  // return null;
                },
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: "password",
                prefix: Icon(Icons.lock),
                suffix: Icon(Icons.remove_red_eye),
                // hintText: "Not include blah",
                helperText: "Must Be Unique",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(200))
              ),
            ),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState.validate()){
                 // ignore: deprecated_member_use
                 _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("SUccess")));
            }
            }, child: Text("login")),
          ],
         ),
       ),
      ),
    );
  }
}