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
  TextEditingController caTextField = TextEditingController();
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
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blue,
                          title: const Text(
                            'Özel Alert',
                            style: TextStyle(color: Colors.white),
                          ),
                          content: SizedBox(
                            height: 80,
                            child: Column(
                              children: [
                                TextField(
                                  controller: caTextField,
                                  decoration: InputDecoration(
                                    label: Text('Veri')
                                  ),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  print('İptal Seçildi');
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'İptal',
                                  style: TextStyle(color: Colors.white),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  print('Veri Okundu');
                                  print(caTextField.text);
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Veri Oku',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        );
                      });
                },
                child: const Text('Custom Dialog'))
          ],
        ),
      ),
    );
  }
}
