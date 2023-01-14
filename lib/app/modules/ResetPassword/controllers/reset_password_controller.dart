import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  //TODO: Implement ResetPasswordController

  final showhidepw = false.obs;
  changeEye() => showhidepw.toggle();
  final count = 0.obs;
  @override
  TextEditingController password = TextEditingController();
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
