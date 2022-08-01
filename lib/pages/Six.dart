import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Six extends StatelessWidget {
  // const Six({Key? key}) : super(key: key);
  // List<String> names = ["Mg Mg","Aung Aung"]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid"),
      ),
      body: GridView.builder(itemCount: 10,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
      ), itemBuilder: ((context, index) => _getCard(index)))
      
      // count(crossAxisCount: 2,
      // mainAxisSpacing: 20,
      // children: [
      //   ListView.builder(
      //     itemCount: 10,
      //     itemBuilder: ((context, index) => _getCard('Title ${itemCount}')))
      // ],),
    );
  }
  Widget _getCard(name){
    return Card(
      color: Colors.red,
      child:Column(
        children: [
          Text("Hello"),
           Image.asset("asset/images/js.jpeg",width: 100,height: 100,),
      IconButton(onPressed: (){},
      icon: Icon(Icons.ac_unit,size: 30,),
      )
        ],
      ),
     
    );
  }
}