import 'package:dietosure_task_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController(text: "Username@gmail.com");
  final _password = TextEditingController(text: "12345678");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf2f8fd),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.w),
                  child: Image.asset("assets/icon.png", width: 100.w),
                ),
                SizedBox(height: 100.w),
                CustomTextfield(
                  controller: _email,
                  label: "Email Address",
                  prefixIcon: Icons.email_outlined,
                  suffixIcon: null,
                  isObscure: false,
                ),
                SizedBox(height: 30.w),
                CustomTextfield(
                  controller: _password,
                  label: "Password",
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: Icons.visibility_outlined,
                  isObscure: true,
                ),
                SizedBox(height: 30.w),
                Container(
                  height: 54.w,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3e4685),
                    borderRadius: BorderRadius.circular(30.w),
                  ),
                ),
                SizedBox(height: 30.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "Signup",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
