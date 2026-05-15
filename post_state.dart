// create post state for updated UI When calling data
import 'package:flutter/material.dart';
import 'post_bloc.dart';
import 'post_event.dart';
import 'post_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

abstract class PostState {}

class PostIniatialize extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  // store in list data
  final List<PostModel> posts;
  PostLoaded(this.posts);
}

class PostError extends PostState {
  final String message;

  PostError(this.message);
}
