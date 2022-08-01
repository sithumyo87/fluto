import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/RandomUser.dart';
import 'package:flutter_application_1/pages/Detail.dart';

import '../helpers/Api.dart';
import '../models/Post.dart';

class seven extends StatefulWidget {
  // const seven({Key? key}) : super(key: key);


  @override
  State<seven> createState() => _sevenState();
}

class _sevenState extends State<seven> {
  List<Post> postList = [];
  List<RandomUser> randomuser =[];
  loadPosts()async {
    List<Post> postList = await Api.getAllPost();
    List<RandomUser> randomuser = await Api.getAllUser();
    setState(() {
      this.postList = postList;
      this.randomuser = randomuser;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadPosts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posts"),),
      body:randomuser.length > 0 ? 
        ListView.builder(
          itemCount:randomuser.length,
          itemBuilder: (context,index) => _getListUser(context,randomuser[index]),
        )
      : Center(child: CircularProgressIndicator()),
    );
  }

  Widget _getListUser(context,RandomUser user){
    return Card(
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("${user.name.first}"),
          trailing: InkWell(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(user:user) ));
          },child: Hero(tag: "${user.email}",child:Icon(Icons.arrow_right_alt_rounded))),
        ),
      );
  }
}