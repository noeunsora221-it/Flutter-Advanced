import 'package:flutter/material.dart';
import 'auth_provider.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

class AuthProvider extends ChangeNotifier{
      
      bool _isloggin = false;
      bool get isloggin => _isloggin;    // Updated data is secure 

      // checking validated email and password
      void login(String email, String password){
          if(email == "samsophal123@gmail.com" && password == "sophal123"){
            _isloggin = true;

            notifyListeners();
          }

          // logout
          
      }

      void logout() {
    _isloggin = false;

    notifyListeners();
  }
}