import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/addpoem_screen/addpoem_screen.dart';
import 'package:poetry/screen/bookmark_screen/bookmark_screen.dart';
import 'package:poetry/screen/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:poetry/screen/follow_screen/follow_screen.dart';
import 'package:poetry/screen/login_screen/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await PrefService.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    // home: SplashScreen(),
    // home: HomeScreen(),
    home: LoginScreen(),
    // home: ProfileScreen(),
  ));
}
