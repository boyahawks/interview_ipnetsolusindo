// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:interview_ipnetsolusindo/screen/login.dart';

// screens

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Aplikasi Bimbingan Online',
        theme: ThemeData(fontFamily: 'OpenSans'),
        debugShowCheckedModeBanner: false,
        // builder: EasyLoading.init(),
        home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    runFirst();
  }

  runFirst() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(Login());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(flex: 40, child: SizedBox()),
              Expanded(
                  flex: 60,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Loading...",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          strokeWidth: 5,
                          color: Colors.red,
                        ),
                      )),
                    ],
                  )),
            ],
          )),
    );
  }
}
