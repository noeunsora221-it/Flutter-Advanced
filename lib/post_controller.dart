import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'api_service.dart';
import 'post_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'post_controller.dart';
import 'post_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'home_screen.dart';

class PostController extends GetxController{
      var postList = <PostModel>[].obs;
      var isloading = false.obs;

      final ApiService apiService = ApiService();

      @override
      void OnInit() {
          apiService.fetchData();
        super.onInit();
  
      }

      void fetchData() async{
        try{
          isloading(true);
          var data = await apiService.fetchData();
          postList.assignAll(data);

        }finally{
            isloading(false);
        }

      }    


}