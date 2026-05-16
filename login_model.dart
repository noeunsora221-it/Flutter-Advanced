import 'package:bloc_apps/login_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'login_bloc.dart';
import 'login_event.dart';
import 'login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginModel {
  final String username;
  final String password;

  LoginModel({required this.username, required this.password});
  // login API From Json
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
     username: json['username'],
     password: json['password']
     );
  }
}
