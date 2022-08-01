import 'package:flutter/material.dart';

import 'One.dart';
import 'Two.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      var mmTxt = "ယူနီကုဒ်စနစ်တွင် မြန်မာအက္ခရာတစ်လုံးချင်းစီအတွက် U 1000 မှ U 109F အတွင်းတွင် သီးခြားသတ်မှတ်ပေးထားသည်။ မြန်မာယူနီကုဒ်တွင် မွန်၊ ကရင်၊ ကယား၊ ရှမ်း နှင့် ပလောင်ဘာသာစကားများအတွက် ပါဝင်ပြီး ပါဠိနှင့် သက္ကရိုက်ဘာသာစကားကိုလည်း အသုံးပြုနိုင်သည်။";
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        actions: [
          Icon(Icons.home_max_sharp),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is home Page",style: TextStyle(fontSize: Theme.of(context).textTheme.headline5?.fontSize),),
            SizedBox(height: 20,),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Two(name:"Mg Mg",phone:"09100010010"))));
              // Navigator.pushNamed(context, '/about');
              // Navigator.pushReplacementNamed(context, '/about');
            },child: Text("Btn 1"),),
            SizedBox(height: 20,),
            Text(mmTxt,style: TextStyle(fontFamily: "Burmese",fontSize: 20),),
            SizedBox(height: 20,),
            Image.asset("asset/images/js.jpeg"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("Hey There");
      },child: Icon(Icons.add),),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (ind) { 
          print("Index number is ${ind}");
          } ,
        items: [
          BottomNavigationBarItem(
            label:'Home',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label:'About',
            icon: Icon(Icons.person)
          ),
        ],
      )
    );
  }
}