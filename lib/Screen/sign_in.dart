import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signup_signin_ui_design/Authentication/AuthSignIn/sign_in_auth.dart';
import 'package:signup_signin_ui_design/Screen/screenSelect.dart';
 import 'package:signup_signin_ui_design/Screen/sign_up.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'latestNews.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff152848),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height/7,
              width: width/2.3,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: const Color(0xD0153448),
                child: Image.asset(
                  'image/maan.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
             Text(
              "Maan Academy",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width/10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.39,
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(145),
                      topRight: Radius.circular(145),
                    ),
                    side: BorderSide(
                        color: Color(0x229e9e9e),
                        width: 5,
                        strokeAlign: StrokeAlign.outside)),
                color: const Color(0xff050B1E),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SizedBox(
                      height: height/10,
                    ),
                     Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xbaffffff),
                          fontSize: height/18,
                          fontWeight: FontWeight.bold),
                    ),
                     SizedBox(
                      height: height/13,
                    ),
                    Padding(
                      padding:   EdgeInsets.only(left: width/10, right: width/10),
                      child: AppTextField(
                        textStyle: const TextStyle(color: Color(0xbaffffff)),
                        controller: _email,
                        textFieldType: TextFieldType.EMAIL,
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: const TextStyle(color: Colors.white),
                            hintText: "Enter Your Email",
                            hintStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: grey)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: grey))),
                      ),
                    ),
                      SizedBox(
                      height: height/50,
                    ),
                    Padding(
                      padding:   EdgeInsets.only(left: width/10, right: width/10),
                      child: AppTextField(
                        textStyle: const TextStyle(color: Color(0xbaffffff)),
                        controller: _password,
                        textFieldType: TextFieldType.PASSWORD,
                        decoration: InputDecoration(
                          suffixIconColor: Colors.grey,
                          labelText: "Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: const TextStyle(color: Colors.white),
                          hintText: "Enter Your Password",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: grey)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: grey),
                          ),
                        ),
                      ),
                    ),
                      SizedBox(
                      height: height/40,
                    ),
                    InkWell(
                      onTap: () async{
                        if (_email.text.isEmpty) {
                          toast("Please..Enter Email");
                        } else if (_password.text.isEmpty) {
                          toast("Please...Enter Password");
                        } else if (_password.text.length < 6) {
                          toast("Password Must be 6 Character");
                        } else {
                            try{
                              EasyLoading.show(status: "Sining In");
                              var status = await SignInAuth().SignInWithMail(_email.text, _password.text);
                              if(status){
                                toast("OK");
                                EasyLoading.showSuccess(" Sining In Successful");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SelectScreen()));
                              }
                              else{
                                toast("NO");
                                EasyLoading.showError("Faild");
                              }
                            }catch(e){
                              print(e);
                              EasyLoading.showError("$e");
                            }
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: width / 3.8,
                            top: height/55,
                            bottom: height/55,
                            right: width / 3.8),
                        decoration: BoxDecoration(
                          color: const Color(0xff304F6A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Log In",
                          style: TextStyle(color: Colors.grey, fontSize: 23),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                            EdgeInsets.only(top: height/50, left: width/8, right: width/8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Forget ?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()));
                              },
                              child: const Text(
                                "Create an Account",
                                style: TextStyle(color: Colors.grey),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
