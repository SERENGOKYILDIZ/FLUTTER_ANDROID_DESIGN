import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Tasarım Giriş'),
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

    /// Ekran oranını bulmak için ekledik
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      /**
       * ALT + ENTER: belirli bir widget'in üzerine bu kombinasyonu yaparsak
       * pratik bir şekilde özellikler ekleyebiliriz.
       * */
      body:
        Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top:ekranYuksekligi/100),
                child: SizedBox(
                    width: ekranGenisligi/2,
                    height: ekranYuksekligi/5,
                    child: Image.asset("resimler/aslan.jpg"),
                ),
              ),
              Container(width: ekranGenisligi, height: ekranYuksekligi/4, color: Colors.blue),
              Text("Hello World", style: TextStyle(fontSize: ekranGenisligi/10),)
            ],
          ),
        )
      );
  }
}