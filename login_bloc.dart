import 'dart:convert';
import 'dart:nativewrappers/_internal/vm/lib/convert_patch.dart';

import 'package:bloc_apps/login_model.dart';
import 'package:bloc_apps/login_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'login_bloc.dart';
import 'login_event.dart';
import 'login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/browser_client.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginIniatialize()) {
    on<fetchDataAPI>((event, emit) async{
      
      emit(LoginLoading());

      // try catch for handler the http as bloc
      try{
        final respone = await http.get(
          Uri.parse("https://apiserverresponedata/fetch/data")
        );
        // checking https validated
      if(respone.statusCode == 200){
        List jsonData = jsonDecode(respone.body);

        // data is store to lists model
        List<LoginModel> models = jsonData.map((s) => LoginModel.fromJson(s)).toList();
        emit(LoginLoaded(models));


      }else{
        emit(LoginError("Invalid fetch data from API"));
      }
      }catch(e){
        emit(LoginError(e.toString()));
      }
    });
  }
}