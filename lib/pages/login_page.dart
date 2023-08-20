import 'dart:convert';

import 'package:dart_flex/constants/todo_url.dart';
import 'package:dart_flex/models/user_model.dart';
import 'package:dart_flex/pages/forget_password.dart';
import 'package:dart_flex/pages/signup_page.dart';
import 'package:dart_flex/provider/password_provider.dart';
import 'package:dart_flex/user_types/dash_board.dart';
import 'package:dart_flex/widgets/password_provider_widgets.dart';
import 'package:dart_flex/widgets/textformfield_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  static const String nameRoute = '/login-page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool showLoader = false;
  // ignore: unused_field
  bool _isNotValidate = false;
  late SharedPreferences preferences;

  @override
  void initState() {
    initSharedPref();
    super.initState();
  }

  void initSharedPref() async {
    preferences = await SharedPreferences.getInstance();
  }

  void toggleLoader() {
    setState(() {
      showLoader = !showLoader;
    });
  }

  void registerUser() async {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      Users users = Users(
          email: _emailController.text.toString(),
          password: _passwordController.text.toString());
      var response = await http.post(Uri.parse(login),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(users.toMap()));
      var jsonRespose = jsonDecode(response.body);

      if (jsonRespose['status']) {
        var myToken = jsonRespose['token'];
        preferences.setString('token', myToken);
        // ignore: use_build_context_synchronously
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DashBoardPage(token: myToken)));
      } else {}
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final passwordProvider =
        Provider.of<PasswordProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black,
      body: showLoader
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                  child: ListView(
                    children: [
                      SizedBox(height: 150.h),
                      Center(
                          child: Text('MOOVIZ',
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                      SizedBox(height: 05.h),
                      Center(
                          child: Text("Let's login below here",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green))),
                      SizedBox(height: 20.h),
                      TextFormFieldWidget(emailController: _emailController),
                      SizedBox(height: 10.h),
                      PasswordProviderWidget(
                          passwordController: _passwordController,
                          passwordProvider: passwordProvider),
                      SizedBox(height: 05.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, ForgetPassword.nameRoute);
                          },
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 05.h),
                      SizedBox(
                        height: 45.h,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            registerUser();
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Don’t have an account? ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpPage()),
                                      ),
                              ),
                            ],
                          )),
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
