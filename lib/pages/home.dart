import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/employe.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( 
        onPressed: () {Navigator.push(context, 
        MaterialPageRoute(builder:(context )=> const Employe()));},
        child: const Icon(Icons.add),),
      appBar:AppBar(title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Flutter",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold
          )
           ),
         Text(
          " Firebase",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
            fontWeight: FontWeight.bold),
         )
      ],
      ),
      ),
      body: Container(child: const Column(children: []),),
      
    );
  }
}