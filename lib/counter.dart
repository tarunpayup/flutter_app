import 'package:flutter/material.dart';

class CounterText extends StatelessWidget{
  final int count;
  const CounterText({super.key, required this.count});

  @override
  Widget build(BuildContext context){
    return Text(
      "$count",
      style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold
      ),
    );
  }
}


class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{
  int count = 0;
  void incrementCounter(){
      setState(() {
        count++;
      });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Counter Application"),
      ),
      body: Center(
        child: CounterText(count: count), //CounterText->count = _CounterScreenState -> Count
      ),
      floatingActionButton: FloatingActionButton(onPressed: incrementCounter, child: const Icon(Icons.add),),
    );
  }

}

//Stateful widget -> State -> Widget
//Private variables -> _MyCounterScreen; MyCounterScreen-> Public variable
//Stateless ->Widget