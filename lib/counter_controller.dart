import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterController extends GetxController{
    var count = 0.obs;

    void increment(){
      count++;
    }

    void decrement(){
      count--;
    }
}