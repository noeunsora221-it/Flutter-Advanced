import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_bloc.dart';

// Login states
abstract class LgoinState {}

class LoginInitialState extends LgoinState {}

class LoginLoadingState extends LgoinState {}

class LoginSuccessState extends LgoinState {}

class LoginError extends LgoinState {
  final String message;
  LoginError({required this.message});
}
