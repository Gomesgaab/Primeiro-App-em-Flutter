import 'package:flutter/material.dart';

final class Textedition extends StatelessWidget {
  final String texto;
  const Textedition({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
      ),
    );
  }
}
