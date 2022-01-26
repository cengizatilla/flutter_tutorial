import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSearch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Kullanımı'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Card(
                color: Colors.deepPurpleAccent,
                elevation: 10.0,
                shadowColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    side: BorderSide(width: 1, color: Colors.pinkAccent)),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Toplam Puan : 20',style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text("150",style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                      
                      ],
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
