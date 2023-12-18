import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 228, 228),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Icon(
                Icons.person,
                size: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                height: 30,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu email:")),
                    Expanded(flex: 3, child: Text("email:")),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                height: 30,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe sua Senha:")),
                    Expanded(flex: 3, child: Text("Senha:")),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                width: double.infinity,
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 15, 255, 7),
                child: const Text("Botão:"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                alignment: Alignment.center,
                child: const Text("Cadastro:"),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
