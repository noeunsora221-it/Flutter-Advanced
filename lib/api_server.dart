import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'user_model.dart';


// API as flutter general used as
// Stepping for building apps
// Create API URL
// Send HTTP Respone
// Receive json data
// Converting json to model
class ApiServer{
  // create API URL
  final String APIURL = "https://jsonplaceholder.typicode.com/users";

  // send HTTP Respone
  Future<List<UserModel>> fetchData() async{
    
    // Receive json data
  final respone = await http.get(
    Uri.parse(APIURL)
  );

  // checking status of http as api
  if (respone.statusCode == 200){
    List JsonData = jsonDecode(respone.body);

    // coverting jsonData to model
    return JsonData.map((a)=> UserModel.fromJson(a)).toList();
  }else{
    throw "failure to error pls check api a again...!";
  }
  
  }
}