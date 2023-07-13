import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  //await PrefService.init();
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
     home: SplashScreen(),
    // home: HomeScreen(),
    //home: LoginScreen(),
    // home: ProfileScreen(),
  ));
}
