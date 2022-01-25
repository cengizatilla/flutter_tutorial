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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
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
  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              tooltip: "Menu Icon",
              icon: Icon(Icons.dehaze),
              onPressed: () {
                print('Menu Icon Tıklandı');
              }),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Başlık",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              Text("AltBaşlık",
                  style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          ),
          toolbarOpacity: 1,
          actions: [
            ElevatedButton(onPressed: () {}, child: const Text('Ayarlar')),
            IconButton(
              tooltip: 'Menu 1',
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                print('Menü 1 tıklandı');
              },
            ),
            PopupMenuButton(
              child: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text('Sil'),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text('Güncelle'),
                ),
              ],
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print('Sil');
                } else if (menuItemValue == 2) {
                  print('Güncelle');
                }
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text("Data")],
          ),
        ));
  }
}
