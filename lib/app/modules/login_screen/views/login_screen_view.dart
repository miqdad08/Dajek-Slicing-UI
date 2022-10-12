import 'package:dajek/helper/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return LoginContent();
  }
}


///StatefulWidget Login
class LoginContent extends StatefulWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Spacer(),
              /// Image Dajek
              Hero(
                tag: "Image",
                  child: Image.asset(imageDajek, width: 175),
              ),
              SizedBox(
                height: 50,
              ),
              ///TextField Email
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: lightGrey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",

                        hintStyle: textOnBoardingSub),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ///TextField Passwod
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: lightGrey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: textOnBoardingSub,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: grey1,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ///Button Login
              InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.MAIN_SCREEN);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), color: red1),
                  child: Center(
                      child: Text(
                    "Login",
                    style: textButtonBoarding,
                  )),
                ),
              ),
              ///Divided & or Text
              Stack(
                children: [
                  Divider(
                    color: lineGrey,
                    height: 55,
                    thickness: 2,
                  ),
                  Center(
                    child: Container(
                        color: Colors.white,
                        height: 55,
                        width: 40,
                        child: Center(
                            child: Text(
                          "or",
                          style: textOnBoardingSub,
                        ))),
                  )
                ],
              ),
              /// Button Sign Up with Google
              InkWell(
                onTap: () {},
                child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: lineGrey, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google_logo.png", width: 30,),
                        SizedBox(width: 10,),
                        Text("Sign Up With Google", style: textOnBoardingSub,)
                      ],
                    )),
              ),
              Spacer(),
              ///Text & Text Button Sign UP
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t  have an account?", style: textOnBoardingSub,),
                  TextButton(onPressed: (){
                    Get.offAllNamed(Routes.SIGNUP);
                  }, child: Text("Sign Up", style: textSignUp,)),
                ],
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
