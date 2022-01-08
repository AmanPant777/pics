class ImageModel{
 late int id;
 late String url;
 late String title;
  ImageModel(this.id,this.title,this.url);

 ImageModel.fromJson(Map<String,dynamic> parsedata){
    id=parsedata['id'];
    url=parsedata['url'];
    title=parsedata['title'];
  }
}