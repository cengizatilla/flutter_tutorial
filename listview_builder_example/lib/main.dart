import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  
  var ulkeler = ['Türkiye','Almanya','İtalya','Rusya','Çin'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context,indeks){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text(ulkeler[indeks])
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
