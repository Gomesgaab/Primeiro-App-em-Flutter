import 'package:flutter/material.dart';
import 'package:srh/pages/paginacao/Page1.dart';
import 'package:srh/pages/paginacao/Page2.dart';
import 'package:srh/shared/componente_menu/custon_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //dizendo que pagina se inicia em 0
  PageController controller = PageController(initialPage: 0);
  int positionPage = 0;
  @override
  Widget build(BuildContext context) {
    //area  separada
    return SafeArea(
      child: Scaffold(
        //menu lateral
        drawer: const CustonMenu(),
        appBar: AppBar(
          //titulo da appBar
          title: const Text("Home"),
        ),
        //construindo body/corpo
        body: Column(
          children: [
            Expanded(
              //paginação
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    positionPage = value;
                  });
                },
                scrollDirection: Axis.vertical,
                children: const [Page1(), Page2()],
              ),
            ),
            BottomNavigationBar(
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: positionPage,
                items: const [
                  BottomNavigationBarItem(
                      label: "Home", icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      label: "Dados", icon: Icon(Icons.rocket)),
                ]),
          ],
        ),
      ),
    );
  }
}
