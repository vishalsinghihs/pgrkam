import 'package:flutter/material.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pgrkam/firebase_services/firebase_api.dart';
// import 'package:pgrkam/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pgrkam/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // appBar:AppBar(title: Text:("push Notifications")),
      title:'Jobs Corner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const SplashScreen(),
    );
  }
}
