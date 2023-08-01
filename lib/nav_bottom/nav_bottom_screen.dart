import 'package:dart_flex/pages/main_home_page.dart';
import 'package:dart_flex/pages/profile_page.dart';
import 'package:dart_flex/pages/search_page.dart';
import 'package:dart_flex/pages/suggestion_movie.dart';
import 'package:dart_flex/user_types/admin_user.dart';
import 'package:flutter/material.dart';

class NavBottomScreen extends StatefulWidget {
  static const String nameRoute = '/nav-bottom';
  const NavBottomScreen({super.key});

  @override
  State<NavBottomScreen> createState() => _NavBottomScreenState();
}

class _NavBottomScreenState extends State<NavBottomScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainHomePage(),
    SearchPage(),
    SuggestionMovie(),
    ProfilePage(),
    AdminUser(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.grey.shade900,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_suggest), label: 'Suggestions'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings), label: 'Admin'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
