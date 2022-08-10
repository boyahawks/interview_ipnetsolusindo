// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_ipnetsolusindo/controller/auth_controller.dart';
import 'package:image_picker/image_picker.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterinState();
}

class _RegisterinState extends State<Register> {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  _RegisterinState createState() => _RegisterinState();

  final controller = Get.put(AuthController());

  File? fotoUser;

  ambilFotoGalery(context) async {
    final getFoto = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      fotoUser = File(getFoto!.path);
    });
    Navigator.pop(context);
  }

  void ambilFotoCamera(context) async {
    final getFoto = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      fotoUser = File(getFoto!.path);
    });
    Navigator.pop(context);
  }

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
                  "REGISTRASI",
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
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Center(
                          child: CircleAvatar(
                        radius: 50.0,
                        child: ClipOval(
                          child: (fotoUser != null)
                              ? Image.file(fotoUser!)
                              : Image.asset('assets/user.png'),
                        ),
                        backgroundColor: Colors.white,
                      )),
                      Center(
                        child: InkWell(
                          onTap: () {
                            updateProfileUser(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 80),
                            child: Icon(
                              Icons.camera_alt_sharp,
                              size: 30,
                              color: Color.fromARGB(255, 226, 226, 226),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20), child: Text("Nama")),
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
                child: Text(
                  "Alamat",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20),
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
                    controller: controller.alamat.value,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    minLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.location_on),
                    ),
                    style: TextStyle(
                        fontSize: 14.0, height: 2.0, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                              "Register",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      )),
    );
  }

  updateProfileUser(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 250, 249, 249),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Ambil Foto",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                            // ignore: prefer_const_constructors
                                            Color.fromARGB(255, 56, 153, 39))),
                                    onPressed: () {
                                      ambilFotoCamera(context);
                                    },
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            // ignore: prefer_const_constructors
                                            child: Icon(
                                              Icons.camera_alt_rounded,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10, top: 10),
                                            // ignore: prefer_const_constructors
                                            child: Text(
                                              "Camera",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                            // ignore: prefer_const_constructors
                                            Color.fromARGB(255, 56, 153, 39))),
                                    onPressed: () {
                                      ambilFotoGalery(context);
                                    },
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            // ignore: prefer_const_constructors
                                            child: Icon(
                                              Icons.image,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10, top: 10),
                                            // ignore: prefer_const_constructors
                                            child: Text(
                                              "Galery",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ])));
        });
  }
}
