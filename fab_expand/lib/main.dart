import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
      body: const Center(child: Text("Hello"),),
      floatingActionButton: SpeedDial(
        icon: Icons.share,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.red,
            child: const Icon(Icons.mail),
            label: 'Mail',
            onTap: ()=> print('Mail'),
          ),
            SpeedDialChild(
              backgroundColor:  Colors.yellow,
            child: const Icon(Icons.copy),
            label: 'Copy',
            onTap: () => print('Copy'),
          )
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
