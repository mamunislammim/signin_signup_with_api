
import 'package:flutter/material.dart';
import 'package:signup_signin_ui_design/Screen/sign_up.dart';
import 'Screen/sign_in.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
