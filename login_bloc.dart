import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'main.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginIniatialize()) {
    on<LoginButtonPressed>((event, emit) async {
      // Code will be handler
      emit(LoginLoading());

      await Future.delayed(Duration(seconds: 3));

      // checking username and password
      if (event.username == "sophalsam04@gmail.com" &&
          event.password == "sophal555" &&
          event.department == "mobileapps") {
        emit(LoginSuccess());
      } else {
        emit(Loginfailure("Succesfully...!"));
      }
    });
  }
}
