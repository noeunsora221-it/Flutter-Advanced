import 'package:bloc_apps/login_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'login_bloc.dart';
import 'login_event.dart';
import 'login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class LoginState{}
class LoginIniatialize extends LoginState{}
class LoginLoading extends LoginState{}
class LoginLoaded extends LoginState {
  
   late List<LoginModel> models;

   LoginLoaded(this.models);

}

class LoginError extends LoginState{
  final String error;
  LoginError(this.error);

  
}