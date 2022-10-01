import 'package:dajek/helper/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return LoginContent();
  }
}



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
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            /// Image Dajek
            Image.asset("assets/images/logo.png", width: 175),
            SizedBox(
              height: 50,
            ),
            ///TextField Email
            Container(
              margin: EdgeInsets.only(
                left: 45,
                right: 45,
              ),
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

                      hintStyle: onBoardingSubText),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ///TextField Passwod
            Container(
              margin: EdgeInsets.only(
                left: 45,
                right: 45,
              ),
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
                    hintStyle: onBoardingSubText,
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
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 45),
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
                  indent: 45,
                  endIndent: 45,
                ),
                Center(
                  child: Container(
                      color: Colors.white,
                      height: 55,
                      width: 40,
                      child: Center(
                          child: Text(
                        "or",
                        style: onBoardingSubText,
                      ))),
                )
              ],
            ),
            /// Button Sign Up with Google
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45),
              child: InkWell(
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
                        Text("Sign Up With Google", style: onBoardingSubText,)
                      ],
                    )),
              ),
            ),
            Spacer(),
            ///Text & Text Button Sign UP
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t  have an account?", style: onBoardingSubText,),
                TextButton(onPressed: (){}, child: Text("Sign Up", style: textSignUp,)),
              ],
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
