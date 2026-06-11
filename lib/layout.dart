import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget{
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Column and Row"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                "Header Section",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                "Header Section",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      );
  }
}