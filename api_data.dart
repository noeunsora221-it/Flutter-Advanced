import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getx_apps/user_local.dart';
import 'package:getx_apps/api_data.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;


class ApiData{
  final String apiurl = "";


     Future<List<UserLocal>> fetchData()async{

    final respones = await http.get(
      Uri.parse(apiurl)
    );

    if(respones.statusCode == 200){
      List jsonData = jsonDecode(respones.body);

      return jsonData.map((t)=> UserLocal.fromJson(t)).toList();


    }else{
        throw "Load the error checking again...!";
    }
      // checking status co
  }
}