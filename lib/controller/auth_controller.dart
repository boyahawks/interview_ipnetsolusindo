import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthController extends GetxController {
  var username = TextEditingController().obs;
  var password = TextEditingController().obs;
  var usernameRegis = TextEditingController().obs;
  var nohp = TextEditingController().obs;
  var alamat = TextEditingController().obs;

  var showpassword = false.obs;

  // var fotoUser = File.obs;

  passwordTrigger() {
    this.showpassword.value = !this.showpassword.value;
  }
}
