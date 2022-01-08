
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert' as convert;

class AppHome extends StatefulWidget {

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int counter=0;
  fetchImage()async{
    counter++;
    var data=await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/1'));
    var newdata=convert.jsonDecode(data.body) as Map<dynamic,dynamic>;
    print(newdata['url']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child:const Icon(Icons.add_a_photo),
      ),
      appBar: AppBar(
        title:const Text('View Image'),
        
      ),
      body: Center(
        child: Image(image: NetworkImage('https://via.placeholder.com/600/92c952')),
      ),
    );
  }
}