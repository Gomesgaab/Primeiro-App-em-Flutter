import 'package:flutter/material.dart';

final class textedition extends StatelessWidget {
  final String texto;
  const textedition({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
    );
  }
}
