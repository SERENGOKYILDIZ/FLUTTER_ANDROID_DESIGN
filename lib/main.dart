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
       * LayoutBuilder: Ekranlara özgü tasarım yapmamıza olanak sağlar
       * */
      body:
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              if(constraints.maxWidth < 600) /// Ekran genişliği 600'den küçük ise
                {
                  ///Telefon Tasarımı
                  return TelefonTasarimi();
                }
              else
                {
                  ///Tablet Tasarımı
                  return TabletTasarimi();
                }
            }
        ),
      );
  }
}

class TabletTasarimi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/aslan.jpg", width: 300),
          Text("Tabletteki aslan")
        ],
      ),
    );
  }
}

class TelefonTasarimi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/aslan.jpg", width: 200),
          Text("Telefondaki aslan")
        ],
      ),
    );
  }
}