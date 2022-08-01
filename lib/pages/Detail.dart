import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/helpers/constants.dart';

import '../models/RandomUser.dart';
// import 'package:flutter_application_1/models/RandomUser.dart';

class Details extends StatefulWidget {
  
  // const Details({Key key, RandomUser user}) : super(key: key);
  RandomUser user;
  Details({this.user});
  @override
  State<Details> createState() => _DetailsState(user:user);
}

class _DetailsState extends State<Details> {
  RandomUser user;
  _DetailsState({this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${user.name.title}  ${user.name.first}"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
        child: Center(
        
          child: Column(children: [
            ClipOval(
             child:  Hero(tag: "${user.email}",child: Image.network(user.picture.large)),
            ),
            SizedBox(height: 20,),
            Text("${user.name.title} ${user.name.first} ${user.name.last}",style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text(profileTxt,textAlign: TextAlign.justify,),
            SizedBox(height: 30,),

            Table(
              border: TableBorder.all(
                color: Colors.black,
              ),
              children: [
                _getTableBody("Name", "Age", "Remark"),
                 TableRow(
                  children: [
                   _getTableHeader("Kyaw Gyi"),
                   _getTableHeader("19"),
                   _getTableHeader("Nice Guy"),
                  ]
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }

  TableRow _getTableBody(d1,d2,d3){
    return TableRow(
                  children: [
                    _getTableBodyDetail(d1),
                    _getTableBodyDetail(d2),
                    _getTableBodyDetail(d3),

                  ]
                );
  }

  Container _getTableBodyDetail(data){
    return Container(
      height: 50,child: Center( child: Text(data,style: TextStyle(fontWeight: FontWeight.bold) ,)),
    );
  }

  Container _getTableHeader(name){
    return Container(
      height: 30,
      child: Center(child: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),),
    );

  }
}