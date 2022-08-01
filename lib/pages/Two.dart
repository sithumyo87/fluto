import 'package:flutter/material.dart';

class Two extends StatelessWidget{
   var name,phone;
  Two({this.name,this.phone});
  @override
  Widget build(BuildContext context){
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Two"),
        centerTitle: true,
        actions: [
          Icon(Icons.abc_rounded),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))
        ]),
    body:SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Name is ${name}"),
          Text("Phone is ${phone}"),
          RaisedButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: ((context) => Home())));
            // Navigator.pushNamed(context, '/');
            Navigator.pushReplacementNamed(context, '/');
          },child: Text("Hello"),)
        ],),
     
      )
      
      )
    );
  }
}