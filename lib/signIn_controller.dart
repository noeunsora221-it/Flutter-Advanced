import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{
      var loading = false.obs;
      var login = false.obs;
      var errorMessage = ''.obs;

      Future<void> SignIn(String email, String password) async{
          if(email.isEmpty || password.isEmpty){
            errorMessage.value = "Checking email and password...!";
            return;
          }

      try{
          loading.value = true;

          await Future.delayed(Duration(seconds: 2));

          if(email == "phalsam01@gmail.com" && password == "1234"){
            login.value = true;
          Get.snackbar("Sucessfully!", "Login succesfully");
          }else{
            errorMessage.value = "error password and email";
          }
      }catch(e){
        errorMessage.value = e.toString();
      }finally{
        loading.value =false;
      }
      }

      void signOut(){
        loading.value = false;
        Get.snackbar("Logout", "Logout Succesfully...!");
      } 
}