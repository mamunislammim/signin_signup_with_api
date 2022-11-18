import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signup_signin_ui_design/Screen/screenSelect.dart';
import 'package:signup_signin_ui_design/Screen/sign_in.dart';
import 'package:signup_signin_ui_design/Screen/third_screen.dart';

import 'latestNews.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> goScreen() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("token");
    if(token.isEmptyOrNull){
      await Future.delayed(const Duration(seconds: 5));
          const SignIn().launch(context);
    }
    else {
      await Future.delayed(const Duration(seconds: 5))
          .then((value) => const SelectScreen().launch(context));
    }
  }


  @override
  void initState() {
    goScreen();
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.deepOrange,
              child: Text(
                "Auth App",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
           ],
        ),
      ),
    );
  }
}
