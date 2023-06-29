import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/addpoem_screen/addpoem_screen.dart';
import 'package:poetry/screen/bookmark_screen/bookmark_screen.dart';
import 'package:poetry/screen/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:poetry/screen/follow_screen/follow_screen.dart';
import 'package:poetry/screen/home_screen/home_screen.dart';
import 'package:poetry/screen/introduction_screen/introduction_screen.dart';
import 'package:poetry/screen/poem/poem_screen.dart';
import 'package:poetry/screen/profile_screen/profile_screen.dart';
import 'package:poetry/screen/splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await PrefService.init();
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    //home: FollowScreen(),
     home: SplashScreen(),
  ));
}
