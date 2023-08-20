import 'package:dart_flex/page_routes/page_routes.dart';
import 'package:dart_flex/pages/login_page.dart';
import 'package:dart_flex/provider/dob_datetime_provider.dart';
import 'package:dart_flex/provider/lang_category_provider.dart';
import 'package:dart_flex/provider/marquee_text_provider.dart';
import 'package:dart_flex/provider/password_provider.dart';
import 'package:dart_flex/provider/radios_button_provider.dart';
import 'package:dart_flex/theme/theme_data.dart';
import 'package:dart_flex/user_types/dash_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(MyApp(token: preferences.getString('token')));
}

class MyApp extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final token;
  const MyApp({super.key, required this.token});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PasswordProvider()),
          ChangeNotifierProvider(create: (_) => DateTimeProvider()),
          ChangeNotifierProvider(create: (_) => CustomRadioButtonProvider()),
          ChangeNotifierProvider(create: (_) => LanguageCategoryProvider()),
          ChangeNotifierProvider(create: (_) => MarqueeTextProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MOOVIZ',
          theme: themeData(),
          onGenerateRoute: (settings) => generatedRoutes(settings),
          home: (token != null && JwtDecoder.isExpired(token) == false)
              ? DashBoardPage(token: token)
              : const LoginPage(),
        ),
      ),
    );
  }
}
