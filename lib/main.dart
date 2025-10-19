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
      /**
       * Padding: Widget etrafına boşluk oluşturmak için kullanılır
       *
       * NOT: all ile 4 tarafa aynı, only ile tek tek atanabilir.
       * */
      body:
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(width: 100, height: 100, color: Colors.red),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                bottom: 20,
                top: 20,
                right: 5
              ),
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
            Container(width: 50, height: 50, color: Colors.blue),
            Container(width: 50, height: 50, color: Colors.pink),
          ],
      )
    );
  }
}
