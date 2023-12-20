import 'package:flutter/material.dart';
import 'package:srh/pages/dados_page.dart';
import 'package:srh/pages/pagesview/Page2.dart';
import 'package:srh/pages/pagesview/page1.dart';

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
        drawer: Drawer(
          //editando corpo do menu
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // editando (seus dados)
                //tamanho da caixa
                SizedBox(
                  height: 35,
                  //dando função de botão
                  child: InkWell(
                    //row deixando lado a lado
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Icon(Icons.medical_information),
                        ),
                        SizedBox(
                          //distanciando icon do texto
                          width: 8,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Seus dados",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DadosPaciente()));
                    },
                  ),
                ),
                const Divider(),
                const Text(
                  "Minha Conta",
                  style: TextStyle(fontSize: 16),
                ),
                const Divider(),
                const Text(
                  "Configurações",
                  style: TextStyle(fontSize: 16),
                ),
                const Divider(),
                InkWell(
                  child: const Text(
                    "Sair",
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
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
