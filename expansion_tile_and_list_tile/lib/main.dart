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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ExpansionTile(
          title: const Text(
            'Level 1',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          children: [
            ListTile(
              title: const Text(
                'Spor Yap',
                style: TextStyle(fontSize: 24),
              ),
              onTap: (){
                
              },
            ),
            ListTile(
              title: const Text(
                'Oyun Oyna',
                style: TextStyle(fontSize: 24),
              ),
              onTap: (){
                
              },
            ),
            ListTile(
              title: const Text(
                'Uyu',
                style: TextStyle(fontSize: 24),
              ),
              onTap: (){
                
              },
            )

          ],
          onExpansionChanged: (isExpanded){
            print(isExpanded);
          },
        ));
  }
}
