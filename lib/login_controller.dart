import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController{

  // store data as getx controller
    var isloading = false.obs;
    var islogin = false.obs;
    var errorMessage = ''.obs;

    // create Future as functions
    Future<void> login(
      // store variable
      String email,
      String password,) async{
      // checking validated password and email
      if(email.isEmpty || password.isEmpty){
        errorMessage.value = "Please enter email and password a again...!";
        return;
      }

      try{
        isloading.value = true;

        //delay api 
        await Future.delayed(Duration(seconds: 2));
        if(email == "sophalsam04@gmailc.om" && password == "12345"){
          islogin.value = true;
          Get.snackbar("Succesfully...!", "Login Succesully!");
        }else{
        errorMessage.value = "Error email and password";
        }
      }catch(e){
          errorMessage.value = e.toString();
      }finally{
        isloading.value = false;
      }
    }


    void logout(){
      islogin.value = false;

      Get.snackbar("Failure", "Pls checking email and password again...!");
    }




}