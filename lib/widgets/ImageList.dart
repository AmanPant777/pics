import 'package:flutter/cupertino.dart';
import 'package:pics/models/image_model.dart';

class ImageList extends StatelessWidget {
 
 final List<ImageModel> image;
ImageList(this.image);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: image.length,
      itemBuilder: ( context,index){
        return Container(
          padding:EdgeInsets.all(10),
          child: Image(image: NetworkImage(image[index].url),
          ),
        );
      },);
  }
}