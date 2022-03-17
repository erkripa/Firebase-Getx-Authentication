import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_getx_auth/controller/auth_controller.dart';
import 'package:firebase_getx_auth/routes/routes.dart';
import 'package:firebase_getx_auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Firebase-Getx',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      initialRoute: RouteHelper.getSplashScreen(),
      getPages: RouteHelper.getPages,
    );
  }
}
