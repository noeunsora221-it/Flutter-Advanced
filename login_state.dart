import 'package:flutter/material.dart';
import 'login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_event.dart';


abstract class LoginState{}

class LoginIniatialize extends LoginState{}
class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {}
class Loginfailure extends LoginState {
    final String error;

    Loginfailure(this.error);
}