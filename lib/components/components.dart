import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Components{
   static var description = "ယူနီကုဒ်ဖောင့်တွေကို ရိုက်တဲ့အခါမှာ မြန်မာ၃ဖောင့်အတွက် ဒီဇိုင်းလုပ်ထားတဲ့ ယူနီကုဒ် ကီးဘုတ်လက်ကွက်ဟာ မှတ်သားအရ အလွယ်ဆုံးနဲ့ အရှင်းဆုံး အကျုံ့ဆုံးဖြစ်တာကို သတိထားမိပါတယ်။";

   static const POST_URL = "https://jsonplaceholder.typicode.com/posts";
   static const USER_URL = "https://randomuser.me/api/?results=50";
  static Container getContainer(context,screen,text,{bdr=true}){
    return Container(
              width: screen.width / 3,
              height: 50,
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text(text,style: Theme.of(context).textTheme.bodyText1,),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(10),
                //   bottomRight: Radius.circular(10),
                // ),
    
                color: Colors.green,
                border: bdr ? Border.all(width: 2,color: Colors.red) : Border(top:BorderSide(width: 1,color: Colors.grey)),
                boxShadow:[
                    BoxShadow(color: Colors.yellow,offset: Offset(7.0,8.0),blurRadius:10 ),
                ] 
              ),
              );
  }

  static Widget getCardWidget(context,title,image,description){
     return Container(
        width: 400,
        height: 230,
        child: Card(
          elevation: 5,
          child: Row(
            children: [
              Image.asset(image,width: 100,height: 100,),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Text(title,style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    Text(description,style: TextStyle(color: Colors.blueAccent),)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}