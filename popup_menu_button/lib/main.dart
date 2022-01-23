

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PopupMenuButton(
                child: const Icon(Icons.open_in_new),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      'Tamamla',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      'Sil',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
                onCanceled: () {
                  print("Seçim yapılmadı");
                },
                onSelected: (menuItemValue) {
                  if (menuItemValue == 1) {
                    print('Tamamla');
                  } else if (menuItemValue == 2) {
                    print('Güncelle');
                  } else {
                    print('Farklı seçim');
                  }
                },
              ),
            ],
          ),
        ));
  }
}
