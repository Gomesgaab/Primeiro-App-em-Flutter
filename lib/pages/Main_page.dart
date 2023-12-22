import 'package:flutter/material.dart';
import 'package:primeiro_app/shared/componente_menu/custon_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //area  separada
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color.fromARGB(116, 155, 194, 1000),
        actions: [
          // logo
          Image.asset(
            'asset/Logo.png',
            height: 67.6,
          ),
          const SizedBox(
            width: 50,
          ),
        ],
      ),
      //menu lateral
      body: Expanded(
        child: Container(
          color: const Color.fromARGB(116, 155, 194, 1000),
        ),
      ),
      drawer: const CustonMenu(),
      //construindo body/corpo
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
