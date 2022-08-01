
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/components.dart';

class One extends StatefulWidget {
  
  // const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  var _selectedVal = "a";
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  var count = 0;
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldState,
      body: SafeArea(child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Components.getContainer(context,screen,"BTN 1"),
                Components.getContainer(context,screen,"BTN 2",bdr: false),
                Components.getContainer(context,screen,"BTN 3"),
              ],
            ),
            SizedBox(height: 30),
            RichText(text: TextSpan(
              text: "Computers\n",
              style: TextStyle(color: Colors.black,fontSize: Theme.of(context).textTheme.headline5?.fontSize),
              children: [
                TextSpan(
                  text: "\t\t\$5000",
                  style: TextStyle(color: Colors.red,fontSize: 15),
                  children: [
                    TextSpan(
                      text: "GG",
                    )
                  ]
                )
              ]
            )),
            SizedBox(height: 20,),
            Text("Welcome From Thailand",style: TextStyle(
              fontSize: 30,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(color: Colors.black,offset: Offset(2.0,2.0)),
                Shadow(color: Colors.red,offset: Offset(4.0,4.0)),
              ]
            ),),
            FlatButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            color: Colors.amberAccent,
            child: Text('Hello'),
          ),
          RaisedButton(onPressed: (){},
          color: Colors.amber,
          child: Text("R Btn"),),
          DropdownButton<String>(
            value: _selectedVal,
            items: ['a','b','c','d','e'].map((String e) {
              return DropdownMenuItem<String>(
                value: e,
                child:Text(e),
              );
            }).toList()
          
          , onChanged: (value){
              _selectedVal = value;
              setState(() {
                
              });
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: (){},
              
               child: Icon(Icons.add)),
              OutlinedButton(onPressed: (){}, child: Icon(Icons.shopping_cart)),
              OutlinedButton(onPressed: (){}, child: Icon(Icons.remove)),
            ],
          ),
          InkWell(
              onTap: (){print("Hello");},
              child: Icon(Icons.person),
            ),
          GestureDetector(
            onTap: (){print("Hei");},
            child: Image.asset('asset/images/js.jpeg'),
          )
          // SizedBox(
          //   width: 20,
          //   height: 20,
          //   child: OutlineButton(
          //     padding:EdgeInsets.zero,
          //     onPressed:(){},
          //     child:Icon(Icons.add)
          //     )
          // ),
          ],
        
          
        ),
          
          
      ),)
    );
  }
}