class UserModel{
  final int id;
  final String name;
  final String email;


  UserModel({
    required this.id,
    required this.name,
    required this.email
  });


  // create json for store as http as blo
  factory UserModel.fromJson(Map<String, dynamic>json){
    return UserModel(
      id: json['id'],
       name: json['name'],
        email: json['email']
        );
  }
}