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
        Row(
          children: [
            Container(  //////-> Kutu görseli ekler
              width: 100,                             //-> Genişlik
              height: 100,                            //-> Yükseklik
              //color:Colors.red,                       //-> Renk (Border varken onun içerisinde tanımla)
              child: Text("Hello my friend"),         //-> İçerisine eklenen eleman
              //margin: const EdgeInsets.all(10.0),     //-> Çevresine boşluk ekler
              margin: const EdgeInsets.only(top:10, bottom: 20, left: 50, right: 100), //-> Çevresine boşluk ekler. 4 tarafa ayrı ayrı

              decoration: BoxDecoration( //-> İçerisine kenar ekler
                color: Colors.red,
                border: Border.all(
                  color: Colors.yellow,
                  width: 3.0
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)) //-> Çerçevere ovallik ekler
              ),

            ),
          ],
        )
    );
  }
}
