import 'package:dart_flex/user_types/dash_board.dart';
import 'package:dart_flex/user_types/manager_user.dart';
import 'package:dart_flex/user_types/upload_movies.dart';
import 'package:dart_flex/user_types/view_subscriptions_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key});

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  Widget selectedScreen = const DashBoardPage();
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Admin',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold))),
      sideBar: SideBar(
        activeBackgroundColor: Colors.transparent,
        activeTextStyle: const TextStyle(color: Colors.red),
        activeIconColor: Colors.red,
        backgroundColor: Colors.white,
        iconColor: Colors.black,
        textStyle: const TextStyle(color: Colors.black),
        items: const [
          AdminMenuItem(
              title: 'Dashboard',
              route: DashBoardPage.nameRoute,
              icon: Icons.dashboard),
          AdminMenuItem(
              title: 'Add Movies',
              route: UploadMoveis.nameRoute,
              icon: Icons.add),
          AdminMenuItem(
              title: 'Manager',
              route: ManagerUser.nameRoute,
              icon: Icons.block),
          AdminMenuItem(
              title: 'User Subscribtion View',
              route: SubscribedUsers.nameRoute,
              icon: Icons.delete),
        ],
        selectedRoute: DashBoardPage.nameRoute,
        onSelected: (item) {
          if (item.route == DashBoardPage.nameRoute) {
            setState(() {
              selectedScreen = const DashBoardPage();
            });
          } else if (item.route == UploadMoveis.nameRoute) {
            setState(() {
              selectedScreen = const UploadMoveis();
            });
          } else if (item.route == ManagerUser.nameRoute) {
            setState(() {
              selectedScreen = const ManagerUser();
            });
          } else if (item.route == SubscribedUsers.nameRoute) {
            setState(() {
              selectedScreen = const SubscribedUsers();
            });
          }
        },
      ),
      body: selectedScreen,
    );
  }
}
