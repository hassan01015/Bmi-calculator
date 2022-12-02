import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String R = ' ';
    if (result >= 30)
      R = 'Obese';
    else if (result >= 25 && result < 30)
      R = 'Over Weight';
    else if (result >= 18.5 && result <= 24.9)
      R = 'Normal';
    else
      R = 'Thin';
    return R;
  }

  const Result(
    this.result,
    this.isMale,
    this.age,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Result")),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Gender: ${isMale ? 'Male' : 'Female'}",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  leading: isMale
                      ? Icon(Icons.male, size: 30, color: Colors.white)
                      : Icon(Icons.female, size: 30, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.blueGrey,
                child: ListTile(
                  leading: Icon(Icons.people, size: 30, color: Colors.white),
                  title: Text(
                    "Result: ${result.toStringAsFixed(2)}",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.blueGrey,
                child: ListTile(
                  leading: Icon(Icons.assignment_ind_rounded,
                      size: 30, color: Colors.white),
                  title: Text(
                    "Age: ${age.toString()}",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.blueGrey,
                child: ListTile(
                  leading: Icon(Icons.health_and_safety,
                      size: 30, color: Colors.white),
                  title: Text(
                    "Healthiness: ${resultPhrase}",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
