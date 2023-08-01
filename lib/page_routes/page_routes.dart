import 'package:dart_flex/nav_bottom/nav_bottom_screen.dart';
import 'package:dart_flex/pages/about_me_page.dart';
import 'package:dart_flex/pages/interested_categorties.dart';
import 'package:dart_flex/pages/forget_password.dart';
import 'package:dart_flex/pages/language_categories.dart';
import 'package:dart_flex/pages/login_page.dart';
import 'package:dart_flex/pages/premium_subscriptions.dart';
import 'package:dart_flex/pages/profile_page.dart';
import 'package:dart_flex/pages/search_in_search.dart';
import 'package:dart_flex/pages/signup_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generatedRoutes(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.nameRoute:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case SignUpPage.nameRoute:
      return MaterialPageRoute(builder: (_) => const SignUpPage());
    case ForgetPassword.nameRoute:
      return MaterialPageRoute(builder: (_) => const ForgetPassword());
    case InterestCategories.nameRoute:
      return MaterialPageRoute(builder: (_) => const InterestCategories());
    case LanguagesCategories.nameRoute:
      return MaterialPageRoute(builder: (_) => const LanguagesCategories());
    case NavBottomScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const NavBottomScreen());
    case PremiumSubsribtion.nameRoute:
      return MaterialPageRoute(builder: (_) => const PremiumSubsribtion());
    case AboutMePage.nameRoute:
      return MaterialPageRoute(builder: (_) => const AboutMePage());
    case ProfilePage.nameRoute:
      return MaterialPageRoute(builder: (_) => const ProfilePage());
    case SearchInSearch.nameRoute:
      return MaterialPageRoute(
          builder: (_) => const SearchInSearch(
                index: 0,
                name: '',
              ));

    default:
      throw 'Route not found';
  }
}
