class UserLocal {
  final String id;
  final String name;
  final String message;

  UserLocal({
    required this.name,
     required this.message
     ,required this.id
     });

  // comfirm with Json data
  factory UserLocal.fromJson(Map<String, dynamic> Jsons){
    return UserLocal(
      id: Jsons['id'],
     name: Jsons['name'],
     message: Jsons['message']
     );
  }
}



