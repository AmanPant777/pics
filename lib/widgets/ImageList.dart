import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pics/models/image_model.dart';

class ImageList extends StatelessWidget {
 
 final List<ImageModel> image;
ImageList(this.image);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: image.length,
      itemBuilder: ( context,index){
        return buildImage(image[index]);
      },);
  }

  Widget buildImage(ImageModel image){
   return Container(
     padding:const EdgeInsets.all(10),
     decoration: BoxDecoration(border: Border.all(color: Colors.red)),
     child: Column(
       children: [
         Image.network(image.url),
         Text(image.title)
       ],
     ),
   )  ;
  }
}