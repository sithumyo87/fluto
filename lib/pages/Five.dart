

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toast/toast.dart';

import '../components/components.dart';

class Five extends StatelessWidget {
  // const Five({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <String> names = ["Mg Mg","Aung AUng","Htun Htun", "Hla Hla"];
    return Scaffold(
      appBar: AppBar(
        title: Text("List Show"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: ((context, index) => _getListWidget(names[index])))
        // children: List.generate(names.length, (index) {
        //   return ListTile(
        //     leading: Icon(Icons.abc),
        //     trailing: Icon(Icons.access_alarm_outlined),
        //     title: Text("${names[index]}"),
        //   );
        // })),
        // children: [
        //   ListTile(
        //     leading: Icon(Icons.abc_sharp),
        //     trailing: Icon(Icons.add),
        //     title: Text("Hello World"),
        //     subtitle: Text("Welcome From Flutter Learing Curve!"),
        //   )
        // ],
      );
  }
  Widget _getListWidget(name){
    return Card(
      elevation: 5,
      
      child: ListTile(
        leading: Icon(Icons.ac_unit),
        trailing: InkWell(
          onTap: () {
            Toast.show(name, duration: Toast.lengthShort, gravity:  Toast.bottom);
          },
          child: Icon(Icons.abc_outlined),
        ),
        title: Text(name),
        subtitle: Text(Components.description),
      ),
    );
  }
}