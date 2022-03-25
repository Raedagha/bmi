import 'package:flutter/material.dart';
import 'package:bmi/widgets/left_bar.dart';
import '../constants.dart';
import '../widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _heightC = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.yellow[600]),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _heightC,
                  decoration: kInputDecoration,
                  style: kTextStyle,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Expanded(
                  child: TextField(
                      controller: _weight,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: kTextStyle,
                      decoration:
                          kInputDecoration.copyWith(hintText: 'Weight'))),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 20),
            child: MaterialButton(
              onPressed: () {
                try {
                  double _h = double.parse(_heightC.text);
                  double _w = double.parse(_weight.text);
                  setState(() {
                    _bmiResult = _w / (_h * _h);
                    if (_bmiResult > 25) {
                      _textResult = "You're over weight";
                    } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                      _textResult = "You have normal weight";
                    } else {
                      _textResult = "You're under weight";
                    }
                  });
                } catch (e) {
                  // print(e);
                }
              },
              child: const Text(
                'Calculate',
                style: TextStyle(fontSize: 35, color: Colors.yellow),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            _bmiResult.toStringAsFixed(2),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 50, color: Colors.yellow),
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            _textResult,
            textAlign: TextAlign.center,
            style: const  TextStyle(fontSize: 32, color: Colors.yellow),
          ),
          const SizedBox(
            height: 10,
          ),
          const LeftBar(
            width: 40,
          ),
          const SizedBox(
            height: 20,
          ),
          const LeftBar(width: 70),
          const SizedBox(
            height: 20,
          ),
          const LeftBar(
            width: 40,
          ),
         const SizedBox(
            height: 20,
          ),
         const RightBar(width: 70),
          const SizedBox(
            height: 50,
          ),
          const RightBar(width: 60),
        ],
      ),
    );
  }
}
