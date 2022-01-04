import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter=counter+1;
          });
        },
        child:const Icon(Icons.add_a_photo),
      ),
      appBar: AppBar(
        title:const Text('View Image'),
        
      ),
      body: Center(
        child: Text('$counter Images'),
      ),
    );
  }
}