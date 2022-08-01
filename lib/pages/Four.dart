import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/components.dart';

// import 'components/components.dart';

class Fouth extends StatelessWidget {
  // const Fouth({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // var description = "ယူနီကုဒ်ဖောင့်တွေကို ရိုက်တဲ့အခါမှာ မြန်မာ၃ဖောင့်အတွက် ဒီဇိုင်းလုပ်ထားတဲ့ ယူနီကုဒ် ကီးဘုတ်လက်ကွက်ဟာ မှတ်သားအရ အလွယ်ဆုံးနဲ့ အရှင်းဆုံး အကျုံ့ဆုံးဖြစ်တာကို သတိထားမိပါတယ်။";
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Components.getCardWidget(context,'Parent','asset/images/js.jpeg',Components.description),
            Components.getCardWidget(context,'Son','asset/images/js.jpeg',Components.description),
            Components.getCardWidget(context,'Daughter','asset/images/js.jpeg',Components.description),
            Components.getCardWidget(context,'Cousin','asset/images/js.jpeg',Components.description),
          ],
        ),
      )
    );
  }
}