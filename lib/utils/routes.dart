import 'package:flutter/material.dart';
import 'package:nsdd/pages/change_password_page.dart';
import 'package:nsdd/pages/forget_password_page.dart';
import 'package:nsdd/pages/home_page.dart';
import 'package:nsdd/pages/login_page.dart';
import 'package:nsdd/pages/otp_page.dart';
import 'package:nsdd/pages/profile_page.dart';
import 'package:nsdd/pages/signup_page.dart';

import '../errors/exceptions.dart';
import '../pages/edit_profile_page.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String login = 'login';
  static const String signup = 'signup';
  static const String forgetPassword = 'forgetPassword';
  static const String otp = 'otp';
  static const String home = 'home';
  static const String changePassword = 'changePassword';
  static const String editProfile = 'editProfile';
  static const String profile = 'profile';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case forgetPassword:
        return MaterialPageRoute(builder: (_) => ForgetPasswordPage());
      case otp:
        return MaterialPageRoute(builder: (_) => const OtpPage());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePasswordPage());
      case editProfile:
        return MaterialPageRoute(builder: (_) => EditProfilePage());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        throw RouteException('Route not found');
    }
  }
}
