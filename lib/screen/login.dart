// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_ipnetsolusindo/controller/auth_controller.dart';
import 'package:interview_ipnetsolusindo/screen/register.dart';

class Login extends StatelessWidget {
  final controller = Get.put(AuthController());

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.only(left: 8, right: 8),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 249, 249),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text("Username")),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    border: Border.all(width: 1.0, color: Colors.black)),
                child: Container(
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  child: TextField(
                    controller: controller.username.value,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                          const Icon(Icons.supervised_user_circle_outlined),
                    ),
                    style: TextStyle(
                        fontSize: 14.0, height: 2.0, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text("Password")),
              SizedBox(
                height: 5,
              ),
              Obx(
                () => Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(width: 1.0, color: Colors.black)),
                  child: Container(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: TextField(
                      // ignore: unnecessary_this
                      obscureText: !this.controller.showpassword.value,
                      controller: controller.password.value,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.security),
                          // ignore: unnecessary_this
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: this.controller.showpassword.value
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              controller.passwordTrigger();
                            },
                          )),
                      style: TextStyle(
                          fontSize: 14.0, height: 2.0, color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 3, 116, 64)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  child: Center(
                    child: Text(
                      "OR",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 3, 116, 64)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Login With Gmail",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.offAll(Register());
                        },
                        child: SizedBox(
                          child: Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "Belum punya akun ? Bergabung sekarang !",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
