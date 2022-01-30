import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

void main() {
  runApp(const MyApp());
}

List _elements = [
  {'name': 'Cengiz ATİLLA', 'group': 'Team A'},
  {'name': 'Celal İÇELLİ', 'group': 'Team B'},
  {'name': 'Bünyamin', 'group': 'Team A'},
  {'name': 'Tahsin', 'group': 'Team B'},
  {'name': 'Osman', 'group': 'Team C'},
  {'name': 'Mahmut', 'group': 'Team C'},
  
];

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
      body: GroupedListView<dynamic, String>(
    elements: _elements,
    groupBy: (element) => element['group'],
    groupSeparatorBuilder: (String groupByValue) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(groupByValue,textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    ),
    itemBuilder: (context, dynamic element) => Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child:  Container(
        child: ListTile(
          contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Icon(Icons.account_circle),
                  title: Text(element['name']),
                  trailing: Icon(Icons.arrow_forward),
        ),
      ),
      ),
    itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']), // optional
    useStickyGroupSeparators: true, // optional
    floatingHeader: true, // optional
    order: GroupedListOrder.ASC, // optional
  ),

    );
  }
}
