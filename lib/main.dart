import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
      ),
      home: const MyHomePage(title: 'Get Fortune'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = "Click the 'Get Fortune' button";

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

  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    setState(() {
      _currentFortune = _fortuneList[fortune];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/fortune_cookie.png",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20,),
              const Text(
                "မင်းရဲ့ ကံကြမ္မာကတော့",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    _currentFortune,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _randomFortune,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text("Get Fortune"),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
