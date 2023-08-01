import 'package:dart_flex/pages/interested_categorties.dart';
import 'package:dart_flex/pages/login_page.dart';
import 'package:dart_flex/provider/dob_datetime_provider.dart';
import 'package:dart_flex/provider/password_provider.dart';
import 'package:dart_flex/widgets/name_formfield.dart';
import 'package:dart_flex/widgets/password_provider_widgets.dart';
import 'package:dart_flex/widgets/textformfield_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  static const String nameRoute = '/singup';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _dateTimeController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var passwordProvider =
        Provider.of<PasswordProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: ListView(
              children: [
                SizedBox(height: 150.h),
                Center(
                    child: Text('SignUp for MOOVIZ',
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                SizedBox(height: 05.h),
                Center(
                    child: Text('Welcome to SignUp Page',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green))),
                SizedBox(height: 20.h),
                NameTexformField(
                  firstNameController: _userNameController,
                  hintText: 'Enter user name ',
                  label: 'Your User name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter user name';
                    } else if (!RegExp(r"^[a-zA-Z]+(?:\s[a-zA-Z]+)+$")
                        .hasMatch(value)) {
                      return 'Please enter valid user name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.h),
                Consumer<DateTimeProvider>(
                  builder: ((context, dp, child) => TextFormField(
                        controller: _dateTimeController,
                        keyboardType: TextInputType.none,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.wysiwyg, color: Colors.red),
                          hintText: 'Date of Birth',
                          hintStyle: const TextStyle(color: Colors.white),
                          suffixIcon:
                              const Icon(Icons.date_range, color: Colors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                        ),
                        onTap: () async {
                          _dateTimeController.text =
                              await dp.dateTimePicker(context);
                        },
                      )),
                ),
                SizedBox(height: 10.h),
                TextFormFieldWidget(emailController: _emailController),
                SizedBox(height: 10.h),
                PasswordProviderWidget(
                    passwordController: _passwordController,
                    passwordProvider: passwordProvider),
                SizedBox(height: 20.h),
                SizedBox(
                    height: 45.h,
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, InterestCategories.nameRoute);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        child: Text('Sign Up',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)))),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp)),
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                                color: Colors.red.shade800,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacementNamed(
                                  context, LoginPage.nameRoute),
                          )
                        ],
                      ),
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
