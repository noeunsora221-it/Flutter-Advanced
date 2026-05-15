import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_event.dart';
import 'post_model.dart';
import 'post_state.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart' as http;

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostIniatialize()) {
    on<fetchPostEvent>((event, emit) async {
      emit(PostLoading());

      // respone data from API
      try{
        final respone = await http.get(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        );

        if(respone.statusCode == 200)
      {
      List jsonData = jsonDecode(respone.body);
      List<PostModel> posts = jsonData.map((a) => PostModel.fromJson(a)).toList();
      emit(PostLoaded(posts));
    }else{
      emit(PostError("Invalid data...!"));
    }  
}catch(e){
        emit(PostError(e.toString()));
      }
    });
  }
}
