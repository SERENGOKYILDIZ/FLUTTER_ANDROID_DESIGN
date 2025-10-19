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
        Center( ///-> Bu ise sütun boyunca ortalar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, ///->Bu satır boyunca ortalar
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Center( ///-> Container'a child atanır, Center eklenir ve oraya istediğimiz bir wigdet'i ortalayarak ekleyebiliriz.
                  child: Text("Hello World"),
                ),
              ),
            ],
          ),
        )
    );
  }
}
