import 'package:flutter/material.dart';

class Validacao {
  validName(String controleName) {
    controleName = "";
    if (controleName.trim().length < 3) {
      return const Text("erro");
    }
  }
}
