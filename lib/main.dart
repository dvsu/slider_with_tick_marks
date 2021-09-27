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
            minValue: 0,
            maxValue: 100,
            value: value,
            majorTick: 6,
            minorTick: 2,
            labelValuePrecision: 0,
            tickValuePrecision: 0,
            onChanged: (val) => setState(() => value = val),
            activeColor: Colors.orange,
            inactiveColor: Colors.orange.shade50,
          ),
        ],
      ),
    );
  }
}
