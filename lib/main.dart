import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subtraction App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SubtractionScreen(),
    );
  }
}

class SubtractionScreen extends StatefulWidget {
  @override
  _SubtractionScreenState createState() => _SubtractionScreenState();
}

class _SubtractionScreenState extends State<SubtractionScreen> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  String result = '';

  void subtractNumbers() {
    double number1 = double.tryParse(number1Controller.text) ?? 0.0;
    double number2 = double.tryParse(number2Controller.text) ?? 0.0;
    double subtractionResult = number1 - number2;

    setState(() {
      result = subtractionResult.toString();
    });
  }

  @override
  void dispose() {
    number1Controller.dispose();
    number2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subtraction App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: subtractNumbers,
              child: Text('Subtract'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
