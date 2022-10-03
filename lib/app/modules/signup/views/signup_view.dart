import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../helper/utils.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return LogoutContent();
  }
}

///StatefulWidget Logout
class LogoutContent extends StatefulWidget {
  const LogoutContent({Key? key}) : super(key: key);

  @override
  State<LogoutContent> createState() => _LogoutContentState();
}

class _LogoutContentState extends State<LogoutContent> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            /// Image Dajek
            Hero(
              tag: 'Image',
              child: Image.asset(imageDajek, width: 175),
            ),
            SizedBox(
              height: 50,
            ),

            ///TextField Full name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: lightGrey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Full name",
                        hintStyle: textOnBoardingSub),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            ///TextField Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
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
            ),
            SizedBox(
              height: 15,
            ),

            ///TextField Passwod
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
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
            ),
            SizedBox(
              height: 25,
            ),

            ///TextField Confirm Passwod
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: lightGrey),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Confirm Password",
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
                Get.offAllNamed(Routes.LOGIN_SCREEN);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), color: red1),
                  child: Center(
                      child: Text(
                    "Sign Up",
                    style: textButtonBoarding,
                  )),
                ),
              ),
            ),


            ///Divided & or Text
            Stack(
              children: [
                Divider(
                  color: lineGrey,
                  height: 55,
                  thickness: 2,
                  endIndent:40,
                  indent: 40,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: lineGrey, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google_logo.png",
                          width: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign Up With Google",
                          style: textOnBoardingSub,
                        )
                      ],
                    )),
              ),
            ),
            Spacer(),

            ///Text & Text Button Sign UP
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: textOnBoardingSub,
                ),
                TextButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.LOGIN_SCREEN);
                    },
                    child: Text(
                      "Sign in",
                      style: textSignUp,
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
