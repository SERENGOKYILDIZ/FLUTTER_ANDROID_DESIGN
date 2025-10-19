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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
          /*
          NOT: Row'da kullanlan bu ve benzeri kodlar column'da da çalışır.
      */
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,          //-> Ortalar
          //mainAxisAlignment: MainAxisAlignment.start,           //-> Varsayılan
          //mainAxisAlignment: MainAxisAlignment.end,             //-> Sondan yerleştirir
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,    //-> Boşluklu yerleştirir
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,    //-> Boşluklu ama başta ve sonda da boşluklu yerleştirir
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 80, height: 80, color: Colors.blue),
            Container(width: 50, height: 50, color: Colors.green),
            Container(width: 30, height: 30, color: Colors.yellow),
          ],
        )
    );
  }
}
