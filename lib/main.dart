import 'dart:async';  //Asynchronous programming
import 'package:flutter/material.dart';
import 'package:flutter_application_2/countdown.dart';


void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CountdownScreen(),
  ));
}
