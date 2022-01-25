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
  bool isSearch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: isSearch
              ? Text(widget.title)
              : TextField(
                  decoration: InputDecoration(hintText: 'Ara...',hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  onChanged: (searchValue) {
                    print(searchValue);
                  },
                ),
          actions: [
            isSearch
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isSearch = false;
                      });
                    },
                    icon: const Icon(Icons.search))
                : IconButton(
                    onPressed: () {
                      setState(() {
                        isSearch = true;
                      });
                    },
                    icon: const Icon(Icons.cancel))
          ],
        ),
        body: const Center(
          child: Text('AAA'),
        ));
  }
}
