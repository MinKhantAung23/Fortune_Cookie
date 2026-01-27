import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fortune_cookie_app/providers/FortuneModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FortuneModel(),
      child: const MyApp(),
    ),
  );
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

  @override
  Widget build(BuildContext context) {
    final fortune = Provider.of<FortuneModel>(
      context,
    );
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
              SizedBox(height: 20),
              const Text(
                "မင်းရဲ့ ကံကြမ္မာကတော့",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(fortune.currentFortune, style: TextStyle(fontSize: 16)),
                ),
              ),
              ElevatedButton(
                onPressed: () => fortune.getNewFortune(),
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
