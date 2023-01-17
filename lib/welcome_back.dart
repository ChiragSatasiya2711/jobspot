import 'package:flutter/material.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  bool _secureText = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.09),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.03),
                Center(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: height * 0.004,
                      fontSize: text * 30,
                      color: const Color(0xFF0D0140),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor",
                    style: TextStyle(fontSize: text * 10, height: height * 0.0015, color: const Color(0xFF524B6B)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Text(
                  "Email",
                  style: TextStyle(
                    height: height * 0.004,
                    fontSize: text * 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF0D0140),
                  ),
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(height * 0.02),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x2E99ABC6),
                          blurRadius: 20,
                          spreadRadius: 20,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.06, top: height * 0.01),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Brandonelouis@gmail.com",
                        hintStyle: TextStyle(
                          fontSize: text * 12,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    height: height * 0.004,
                    fontSize: text * 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF0D0140),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(height * 0.02),
                      ),
                      boxShadow: [BoxShadow(color: Color(0x2E99ABC6), blurRadius: 50, spreadRadius: 30, offset: Offset(10, 10))]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.01),
                    child: TextField(
                      showCursor: false,
                      style: TextStyle(fontSize: text * 22, letterSpacing: text * 2, color: Colors.black),
                      decoration: InputDecoration(
                        hintText: ".......",
                        hintStyle: TextStyle(fontSize: text * 30, letterSpacing: text * 2),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                          icon: Icon(_secureText ? Icons.panorama_fish_eye : Icons.remove_red_eye, size: text * 25),
                        ),
                      ),
                      obscureText: _secureText,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    Checkbox(
                      value: isRememberMe,
                      checkColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      activeColor: Colors.grey.shade300,
                      onChanged: (value) {
                        setState(
                          () {
                            isRememberMe = value!;
                          },
                        );
                      },
                    ),
                    const Text("Remember Me",
                        style: TextStyle(
                          color: Colors.black54,
                        )),
                    const Spacer(),
                    const Text("Forgot Password ?",
                        style: TextStyle(
                          color: Color(0xFF0D0140),
                        )),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Center(
                  child: Container(
                    height: height / 13,
                    width: width / 1.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF0D0140),
                      borderRadius: BorderRadius.all(
                        Radius.circular(height * 0.01),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: text * 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Center(
                  child: Container(
                    height: height / 13,
                    width: width / 1.5,
                    margin: EdgeInsets.symmetric(vertical: height * 0.03),
                    decoration: BoxDecoration(
                      color: Color(0xFFD6CDFE),
                      borderRadius: BorderRadius.all(
                        Radius.circular(height * 0.01),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png"),
                        SizedBox(width: width * 0.04),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                            fontSize: text * 16,
                            color: const Color(0xFF0D0140),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: "You don't have an account yet? ",
                      style: TextStyle(
                        color: Color(0xFF524B6B),
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: " Sign up",
                          style: TextStyle(
                            color: Color(0xFFFF9228),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
