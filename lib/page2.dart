import 'package:flutter/material.dart';

class page2 extends StatefulWidget {

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {

  double slider_value = 1;
  int sliderValue = 1;
  Map final_score_data = {};

  @override
  Widget build(BuildContext context) {

    final_score_data = ModalRoute.of(context)!.settings.arguments as Map;

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
              "How would you rate the Sanitation?",
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
                    final_score_data['final_score'] += value;
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
                Navigator.pushReplacementNamed(context, '/page3', arguments: {
                  'final_score': final_score_data['final_score'],
                });
              },
              child: Text("Next"),
            ),
          ],
        )
    );
  }
}