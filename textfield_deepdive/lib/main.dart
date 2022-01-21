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
  final emailController = TextEditingController();
  final numberController = TextEditingController();

  String password = '';
  bool passwordVisible = false;

  final FocusNode node1 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(32),
            children: [
              buildEmail(),
              SizedBox(
                height: 20,
              ),
              buildPassword(),
              SizedBox(
                height: 20,
              ),
              buildNumber(),
              const SizedBox(height: 24),
              buildNoBorder(),
              const SizedBox(height: 20,),
              buildUnderLine(),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                FocusScope.of(context).requestFocus(node1);
              }, child: const Text("Submit"))
            ],
          ),
        ));
  }

  Widget buildUnderLine() => Column(
    children: [
      Text("UnderLine"),
      TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder()
        ),
      )
    ],
  );

  Widget buildNoBorder() => Column(
    children: [
      Text("No Border"),
      TextField(
        decoration: InputDecoration(
          border: InputBorder.none
        ),
      ),
    ],
  );

  Widget buildNumber() => TextField(
        style: TextStyle(color: Colors.white),
        controller: numberController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Number',
          filled: true,
          fillColor: Colors.black,
          hintStyle: TextStyle(color: Colors.white),
        ),
        keyboardType: TextInputType.number,
      );

  Widget buildPassword() => TextField(
        onChanged: (value) {
          setState(() {
            print("On Change");
            password = value;
          });
        },
        onSubmitted: (value) {
          setState(() {
            print("OnSubmitted");
            password = value;
          });
        },
        obscureText: passwordVisible,
        decoration: InputDecoration(
            hintText: "Your Password",
            labelText: "Şifre",
            errorText: "Şifre hatalı",
            suffixIcon: IconButton(
              icon: passwordVisible
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              },
            ),
            border: OutlineInputBorder()),
      );

  Widget buildEmail() => TextField(
    focusNode: node1,
        controller: emailController,
        decoration: InputDecoration(
            hintText: "Please write email address",
            labelText: "Email",
            // icon: Icon(Icons.email),
            suffixIcon: emailController.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      emailController.clear();
                    }),
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder()),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        enabled: false,
      );
}
