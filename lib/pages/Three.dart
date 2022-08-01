import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Three extends StatefulWidget {
  // const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}
 var title = "Title";
class _ThreeState extends State<Three> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: FlatButton(
                    color:Colors.grey,
                    padding: EdgeInsets.zero,
                    // BorderRadius:BorderRadius.circular(radius)
                    shape: CircleBorder(),
                    onPressed: (){}, child: Text("1"),),
                ),
              )
            ],
          )
        ],
        ),
        
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: (){
               showDialog(context: context, builder: (context) => _getDialog(context),);
            },child: Text("Hello"),)
  
        ],),
    );
   
  }
  TextEditingController inputTextController = TextEditingController();
  AlertDialog _getDialog(context){
    
    
          return AlertDialog(
            
            title: Text("Alert"),
            content: TextField(
              controller: inputTextController,
              
            ),
            actions: [
              ElevatedButton( onPressed: () {
                
                var age = inputTextController.text;
                Navigator.of(context).pop();
                title = "Title ${age}";
                setState(() {
                  
                });
               
              },child: Text("Ok"),),
               ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
                
              },child: Text("Cancel"),)
            ],
            
          );
        }

}
  

        