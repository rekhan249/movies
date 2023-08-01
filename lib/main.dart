import 'package:dart_flex/nav_bottom/nav_bottom_screen.dart';
import 'package:dart_flex/page_routes/page_routes.dart';
import 'package:dart_flex/provider/dob_datetime_provider.dart';
import 'package:dart_flex/provider/lang_category_provider.dart';
import 'package:dart_flex/provider/marquee_text_provider.dart';
import 'package:dart_flex/provider/password_provider.dart';
import 'package:dart_flex/provider/radios_button_provider.dart';
import 'package:dart_flex/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          home: const NavBottomScreen(),
        ),
      ),
    );
  }
}
