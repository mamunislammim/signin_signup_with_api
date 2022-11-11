
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signup_signin_ui_design/Authentication/AuthSignUp/sign_up_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _number= TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
  //  double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff152848),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40,),
                Image.asset('image/maan.png',height: 100,width: 200,),
                const Text("Maan Academy",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
               const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: AppTextField(
                    controller: _name,
                    textStyle: const TextStyle(color: Color(0xa6ffffff)),
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: "Enter Your Name",
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: grey))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: AppTextField(
                    textStyle: const TextStyle(color: Color(0xa6ffffff)),
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
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: AppTextField(
                    textStyle: const TextStyle(color: Color(0xa6ffffff)),
                    controller: _number,
                    textFieldType: TextFieldType.NUMBER,
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: "Enter Your Phone Number",
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: grey))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: AppTextField(
                    textStyle: const TextStyle(color: Color(0xa6ffffff)),
                    controller: _password,
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                        labelText: "PassWord",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: "Enter Your Password",
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: grey))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    if(_name.text.isEmpty){
                      toast("Please...Enter Name");
                    }
                    else if(_email.text.isEmpty){
                      toast("Enter Your Email");
                    }
                    else if(_number.text.isEmpty){
                      toast("Enter Mobile Number");
                    }
                    else if(_password.text.isEmpty){
                      toast("Please,,,Enter Password");
                    }
                    else if(_password.text.length < 6){
                      toast("Password Must be 6 Digit");
                    }
                    else{
                      var status = await SignUpAuth().SignUpWithData(
                          _name.text,
                          _email.text,
                          _number.text,
                          _password.text);
                      if(status){
                        toast("Sign Up Successful");
                      }
                      else{
                        toast("Error");
                      }
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: width / 3.3,
                        top: 13,
                        bottom: 13,
                        right: width / 3.3),
                    decoration: BoxDecoration(
                      color: const Color(0xff304F6A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.grey, fontSize: 23),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
