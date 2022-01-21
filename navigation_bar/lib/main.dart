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
  int index = 0;
  final pages = [
    const Center(
        child: Text(
      'Page 1',
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    )),
    const Center(
        child: Text(
      'Page 2',
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    )),
    const Center(
        child: Text(
      'Page 3',
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        height: 60,
        selectedIndex: index,
        onDestinationSelected: (selectedindex) {
          setState(() {
            index = selectedindex;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.email_outlined),
            selectedIcon: Icon(Icons.email),
            label: 'Page 1',
          ),
          NavigationDestination(
            icon: Icon(Icons.videocam_off_outlined),
            selectedIcon: Icon(Icons.videocam),
            label: 'Page 2',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            selectedIcon: Icon(Icons.chat),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}
