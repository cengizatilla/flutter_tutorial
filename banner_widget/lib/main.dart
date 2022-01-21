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
        body: Center(
          child: ElevatedButton(
            child: const Text('Open Banner Header'),
            onPressed: () {
              ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
              ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                padding: const EdgeInsets.all(16),
                leading: const Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 32,
                ),
                backgroundColor: Colors.indigo,
                content: const Text('I am a Material Banner Bro !'),
                contentTextStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                actions: [
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text('Cancel'))
                ],
              ));
            },
          ),
        ));
  }
}
