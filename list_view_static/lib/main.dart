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
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Güneş'),
              subtitle: Text('alt başlık'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                print('Tapped');
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Güneş'),
              subtitle: Text('alt başlık'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                print('Tapped');
              },
            ),
            ListTile(
              leading: Icon(Icons.mobile_off),
              title: Text('Güneş'),
              subtitle: Text('alt başlık'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                print('Tapped');
              },
            ),
            GestureDetector(
              onTap: (){
                print('AAAA');
              },
              child: Card(
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Text('card tasarımı'),
                      Spacer(),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print('Merhaba');
              },
              child: Container(
                height: 50,
                color: Colors.red,
                child: Text('Merhaba'),
              ),
            )
          ],
        )
        );
  }
}
