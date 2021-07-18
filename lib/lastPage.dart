import 'package:flutter/material.dart';

class lastPage extends StatefulWidget {

  @override
  _lastPageState createState() => _lastPageState();
}

class _lastPageState extends State<lastPage> {

  Map final_score_data = {};

  @override
  Widget build(BuildContext context) {
    final_score_data = ModalRoute.of(context)!.settings.arguments as Map;

    if (final_score_data['final_score'] >= 0 && final_score_data['final_score'] <= 10) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Feedback App"),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 250.0, 0.0, 5.0),
                  child: Text(
                    "We are sorry for your\n      inconvenience",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/page1');
                },
                child: Text("Restart"),
              ),
            ],
          )
      );
    }
    else if (final_score_data['final_score'] >= 11 && final_score_data['final_score'] <= 20) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Feedback App"),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 250.0, 0.0, 5.0),
                  child: Text(
                    "We hope to serve you \n     better next time",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/page1');
                },
                child: Text("Restart"),
              ),
            ],
          )
      );
    }
    else {
      return Scaffold(
          appBar: AppBar(
            title: Text("Feedback App"),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 250.0, 0.0, 0.0),
                  child: Text(
                    "We hope you come back\n             next time",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/page1');
                },
                child: Text("Restart"),
              ),
            ],
          )
      );
    }
  }
}