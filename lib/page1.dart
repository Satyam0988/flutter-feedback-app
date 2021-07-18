import 'package:flutter/material.dart';

class page1 extends StatefulWidget {

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {

  double slider_value = 1;
  int sliderValue = 1;
  double final_score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback App"),
        centerTitle: true,
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text(
          "How would you rate our Service?",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15.0,),
        Slider(
            value: slider_value,
            min: 1,
            max: 5,
            divisions: 4,
            activeColor: Colors.green,
            inactiveColor: Colors.red,
            //label: slider_value.round().toString(),
            onChanged: (double value) {
              setState(() {
                slider_value = value;
                sliderValue = slider_value.round().toInt();
                final_score += value;
              });
            }
        ),
        Text(
            '$sliderValue',
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
        SizedBox(height: 10.0,),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/page2', arguments: {
              'final_score': final_score,
            });
          },
          child: Text("Next"),
          ),
        ],
      )
    );
  }
}
