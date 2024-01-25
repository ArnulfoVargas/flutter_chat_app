import 'package:chat_app/views/chat_page.dart';
import 'package:chat_app/views/loading_page.dart';
import 'package:chat_app/views/login_page.dart';
import 'package:chat_app/views/register_page.dart';
import 'package:chat_app/views/usuarios_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> appRoutes = {
  "users" : (_) => const UsuariosPage(),
  "chat" : (_) => const ChatPage(),
  "loading" : (_) => const LoadingPage(),
  "register" : (_) => const RegisterPage(),
  "login" : (_) => const LoginPage()
};

 static String initialRoute ="login";
}