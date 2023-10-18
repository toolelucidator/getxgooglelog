import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxgooglelog/Constants/firebase_auth_constants.dart';
import 'package:getxgooglelog/Controller/AuthController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // we don't really have to put the home page here
      // GetX is going to navigate the user and clear the navigation stack
      home: const CircularProgressIndicator(),
    );
  }
}