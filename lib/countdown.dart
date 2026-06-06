import 'dart:async';
import 'package:flutter/material.dart';

class CountdownScreen extends StatefulWidget{
  const CountdownScreen({super.key});

  @override
  State<CountdownScreen> createState() => _CountdownScreen();  
}

class _CountdownScreen extends State<CountdownScreen>{
  int count = 10;
  Timer? timer;
  
  @override
  void initState(){
    super.initState();
    startCountDown();
  }

  void startCountDown(){
    timer = Timer.periodic(
      const Duration(milliseconds: 300), //To setup the executable time 
      (timer){
        if(count>0){
          setState(() {
            count--;
          });
        }else{
          timer.cancel(); // Chances of Memory leak increases
        }
      } //To setup the code or executable task
      
      );
  }
  @override
  void dispose(){
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Count down timer"),),
      body: Center(
        child: Text(
          "$count", style: const TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.bold,
            fontSize: 80.0
          ),
        ),
      ),
    );
  }

}
