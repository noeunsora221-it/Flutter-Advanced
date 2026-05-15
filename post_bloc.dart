import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_event.dart';
import 'post_model.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostIniatialize()) {
    on<fetchPostEvent>((event, emit) async {
      // code will be executed when handle
      emit(PostLoading());
    });

    // handling exceptions for handle error
  }
}
