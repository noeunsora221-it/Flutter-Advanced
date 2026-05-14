import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'login_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LgoinState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginButtonPressed>((event, emit) async {
      // async used make api calling  for await response
      // Loading Button states pressed
      emit(LoginLoadingState());

      // API Delays
      await Future.delayed(Duration(seconds: 3));

      // API Response
      // Checking for validate password and emails

      if (event.username == "virakun@123" && event.password == "virak123") {
        emit(LoginSuccessState());
      } else {
        emit(LoginError(message: "Invalid username and password"));
      }
    });
  }
}
