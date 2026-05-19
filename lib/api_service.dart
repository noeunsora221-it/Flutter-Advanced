import 'package:flutter/material.dart';
import 'dart:convert';
import 'post_controller.dart';
import 'post_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class ApiService{
    Future<List<PostModel>> fetchData() async{

      // create link API URL
        final respone = await http.get(
          Uri.parse('https://jsonplaceholder.typicode.com/posts')

        );

        if(respone.statusCode == 200){
          List JsonData = jsonDecode(respone.body);

          return JsonData.map((e)=> PostModel.fromJson(e)).toList();
        }else{
          throw Exception("Load the failure data");
        }
    }
}