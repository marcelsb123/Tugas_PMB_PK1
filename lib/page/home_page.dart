import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key = null, required this.username});
  final username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  late double _bmi = 0.0;

  void _calculateBMI() {
    double height = double.parse(_heightController.text);
    double weight = double.parse(_weightController.text);

    double bmi = weight / (height * height);
    setState(() {
      _bmi = bmi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(widget.username[0]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              controller: _heightController,
              decoration:
                  InputDecoration(hintText: 'Enter your height in meters'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _weightController,
              decoration:
                  InputDecoration(hintText: 'Enter your weight in kilograms'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            if (_bmi != null)
              Text(
                'Your BMI is: ${_bmi.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
