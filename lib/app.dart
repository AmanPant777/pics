
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:pics/models/image_model.dart';
import 'package:pics/widgets/ImageList.dart';

class AppHome extends StatefulWidget {
  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  List<ImageModel> images=[];
  int counter=0;
 fetchImage()async{
    counter++;
  Uri url=Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'); 
    final response=await http.get(url);
    var imageModel=ImageModel.fromJson(convert.jsonDecode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>fetchImage(),
        child:const Icon(Icons.add_a_photo),
      ),
      appBar: AppBar(
        title:const Text('View Image'),
        
      ),
      body: Center(
        child: ImageList(images),
      )
    );
  }
}