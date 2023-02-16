import 'package:flutter/material.dart';
import 'Constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'LoginScreen.dart';
// import 'NewScreen.dart';

//BNQSZMISaKP62qhEMnl33Ymo7vL2
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: LoginScreen(),
      title:"Restaurant new",
      debugShowCheckedModeBanner: false,
    );
  }
}
