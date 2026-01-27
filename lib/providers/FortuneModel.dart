import 'dart:math';

import 'package:flutter/material.dart';

class FortuneModel with ChangeNotifier {
  String _currentFortune = "";

  final List<String> _fortuneList = [
    "ဒီနေ့ မင်းအတွက် ကံကောင်းတဲ့ သတင်းတစ်ခု ကြားရလိမ့်မယ်။",
    "ဒီအပတ်အတွင်း မင်းအတွက် ရွှေအခွင့်အရေးတစ်ခု ပေါ်လာလိမ့်မယ်။",
    "မင်းရဲ့ ကြိုးစားမှုတွေက မမျှော်လင့်ထားတဲ့ နည်းလမ်းနဲ့ အကျိုးပေးလိမ့်မယ်။",
    "စွန့်စားမှုက မင်းကို ခေါ်နေပြီ၊ အသင့်ပြင်ထားပါ။",
    "ဒီနေ့မှာ မင်းရဲ့ ဖန်တီးနိုင်စွမ်းက အကြီးမားဆုံး အားသာချက်ဖြစ်တယ်။",
    "မင်းအနီးအနားမှာ ပျော်ရွှင်စရာ အံ့ဩစရာတစ်ခု စောင့်နေတယ်။",
    "ကိုယ့်ကိုယ်ကို ယုံကြည်ပါ၊ အရာအားလုံး အဆင်ပြေလာပါလိမ့်မယ်။",
    "မင်းရဲ့ ဆုံးဖြတ်ချက်တစ်ခုက မင်းဘဝကို ပြောင်းလဲစေနိုင်တယ်။",
    "မိတ်ဆွေသစ်တစ်ယောက်က အခွင့်အရေးသစ်ကို ယူဆောင်လာမယ်။",
    "မိတ်ဆွေတစ်ယောက်က မင်းကို ကူညီပေးလိမ့်မယ်။",
    "အခွင့်အရေးအသစ်တစ်ခု မင်းရှေ့မှာ ပေါ်လာနေတယ်။",
    "မင်းရဲ့ စိတ်ရှည်မှုက မကြာခင် ဆုချီးမြှင့်ခံရလိမ့်မယ်။",
    "ကိုယ့်ကိုယ်ကို ယုံကြည်ပါ၊ ကံကောင်းခြင်းက မင်းဘက်မှာရှိတယ်။",
    "ဒီနေ့ စတင်တဲ့ ခြေလှမ်းတစ်လှမ်းက မင်းအနာဂတ်ကို သွားစေနိုင်တယ်။",
  ];

  String get currentFortune => _currentFortune;

  FortuneModel() {
    _generateRandomFortune();
  }

  void _generateRandomFortune() {
    var random = Random();
    int randNum = random.nextInt(_fortuneList.length);
    _currentFortune = _fortuneList[randNum];

    notifyListeners();
  }

  void getNewFortune() {
    _generateRandomFortune();
  }
}