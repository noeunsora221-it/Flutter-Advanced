// create post model to fetch data from  API Call data

class PostModel{

  final int id;
  final String title;
  final String body;

  PostModel({
    required this.id,
    required this.title,
    required this.body,
  });

  // fetch data frmJson data
  factory PostModel.fromJson(Map<String, dynamic> json){
    return PostModel(
      id: json['id'],
       title: json['title'],
        body: json['body'],
        );
  }
  
}