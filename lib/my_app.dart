import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:primeiro_app/pages/logins.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //PrimaryColor (cor principal da aplicação)
          primaryColor: Colors.blue,
          //Fonte/estilo de texto principal
          textTheme: GoogleFonts.abhayaLibreTextTheme()),
      home: const LoginPage2(),
    );
  }
}
