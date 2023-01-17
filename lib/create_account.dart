import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                SizedBox(height: height * 0.09),
                Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: text * 20,
                      color: Color(0xFF0D0140),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor",
                  style: TextStyle(fontSize: text * 10, height: height * 0.0015, color: const Color(0xFF524B6B)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.04),
                Text(
                  "Full Name",
                  style: TextStyle(
                    height: height * 0.003,
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
                        hintText: "Brandone Louis ",
                        hintStyle: TextStyle(
                          fontSize: text * 12,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    height: height * 0.003,
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
                    height: height * 0.003,
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
                          icon: Icon(_secureText ? Icons.remove_red_eye : Icons.panorama_fish_eye, size: text * 25),
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
                      activeColor: Colors.white,
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
                      "SIGN UP",
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
                            fontSize: text * 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
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
                ),
                SizedBox(height: height / 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
