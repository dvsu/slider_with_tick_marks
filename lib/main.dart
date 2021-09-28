import 'package:flutter/material.dart';
import 'custom_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider with Tick Marks',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Custom Slider Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 50;
  double actualValue = 50;
  double minValue = 0;
  double maxValue = 100;
  List<double> steps = [
    0,
    5,
    10,
    15,
    20,
    25,
    30,
    35,
    40,
    45,
    50,
    60,
    70,
    80,
    90,
    100
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSlider(
            minValue: minValue,
            maxValue: maxValue,
            value: value,
            majorTick: 6,
            minorTick: 2,
            labelValuePrecision: 0,
            tickValuePrecision: 0,
            onChanged: (val) => setState(() {
              value = val;
              actualValue =
                  steps[(val / maxValue * (steps.length - 1)).ceil().toInt()];
              print('Slider value (linear): $value');
              print('Actual value (non-linear): $actualValue');
            }),
            activeColor: Colors.orange,
            inactiveColor: Colors.orange.shade50,
            linearStep: false,
            steps: steps,
          ),
        ],
      ),
    );
  }
}
