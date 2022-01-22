import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int currentStep = 0;

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController postcode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(primary: Colors.red)
        ),
        child: Stepper(
          currentStep: currentStep,
          onStepContinue: () {
            if (currentStep < 3) {
              setState(() {
                currentStep += 1;
              });
            }
          },
          onStepTapped: (step)=>setState(() {
            currentStep = step;
          }),
          onStepCancel: () {
            if (currentStep >= 0) {
              setState(() {
                currentStep -= 1;
              });
            }
          },
          type: StepperType.vertical,
          steps: getSteps(),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            state: currentStep == 0 ? StepState.indexed : StepState.complete,
            isActive: currentStep == 0,
            title: const Text('Account'),
            content: Column(
              children: [
                TextFormField(
                  controller: firstname,
                  decoration: const InputDecoration(labelText: 'Firstname'),
                ),
                TextFormField(
                  controller: lastname,
                  decoration: const InputDecoration(labelText: 'Lastname'),
                )
              ],
            )),
        Step(
           state: currentStep == 1 ? StepState.indexed : StepState.complete,
            isActive: currentStep == 1,
            title: const Text('Address'),
            content: Column(
              children: [
                TextFormField(
                  controller: address,
                  decoration: const InputDecoration(labelText: 'Address'),
                ),
                TextFormField(
                  controller: postcode,
                  decoration: const InputDecoration(labelText: 'PostCode'),
                )
              ],
            )),
        Step(
           state: currentStep == 2 ? StepState.indexed : StepState.complete,
            isActive: currentStep == 2,
            title: const Text('Complete'),
            content: Container()),
      ];
}
