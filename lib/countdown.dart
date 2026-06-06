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
  }

  void startCountDown(){
    timer = Timer.periodic(
      const Duration(milliseconds: 2000), //To setup the executable time 
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
}

/*
datatype variable 
*/