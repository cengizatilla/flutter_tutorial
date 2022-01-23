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
  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

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
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: tfKullaniciAdi,
                      decoration: const InputDecoration(hintText: 'Kullanıcı Adı'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Kullanıcı adı giriniz";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: tfSifre,
                      decoration: const InputDecoration(hintText: 'Sifre Giriniz'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Şifre giriniz";
                        } else if (value.length < 6) {
                          return "Şifreniz en az 6 haneli olmalıdır";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(onPressed: (){
                      bool controlResult = formKey.currentState!.validate();
                      if(controlResult)
                      {
                        print(tfKullaniciAdi.text);
                        print(tfSifre.text);
                      }
                      else{

                      }

                    }, child: const Text('Gönder')),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
