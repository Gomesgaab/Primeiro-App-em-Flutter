import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  const Dados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus dados"),
      ),
      body: const Center(
        child: Text("Bem Vindo"),
      ),
    );
  }
}
