import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var counter = 0;

  void acrescentar() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contagem: $counter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: acrescentar,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
