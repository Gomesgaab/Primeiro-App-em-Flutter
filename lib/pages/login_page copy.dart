import 'package:flutter/material.dart';
import 'package:srh/pages/Main_page.dart';
import 'package:srh/pages/cadastro_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  var emailControler =
      TextEditingController(text: "gabrielgabiga870@gmail.com");
  var senhaControler = TextEditingController(text: "senha");
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
        ),
        alignment: Alignment.center,
        /* padding: const EdgeInsets.all(0), */
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/fundoLogin.webp'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
