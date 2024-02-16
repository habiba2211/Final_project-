import 'package:final_project/features/Community/presentation/pages/community_tab.dart';
import 'package:final_project/features/login/presentation/pages/login_screen.dart';
import 'package:final_project/features/registeration/presentation/pages/sign_up.dart';
import 'package:final_project/layout/home_layout.dart';
import 'package:final_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // متعارف ان اول سكرينه بتفتح بنحطلها  "/"
  static const String splashScreen = "/";
  static const String login = "Login";
  static const String signUp = "SignUp";
  static const String community = "Community";
  static const String homeLayout = "HomeLayout";
}

class Routes {
  static Route OnGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      case AppRoutes.homeLayout:
        return MaterialPageRoute(builder: (context) => HomeLayout());
      case AppRoutes.community:
        return MaterialPageRoute(builder: (context) => CommunityTab());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: const Text("UnDefine"),
              ),
              body: unDefineRoute(),
            ));
    }
  }

  static Widget unDefineRoute() {
    return const Center(
      child: Text("Route Not Fount"),
    );
  }
}
