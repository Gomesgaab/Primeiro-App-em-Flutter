import 'package:flutter/material.dart';
import 'package:srh/pages/dados_page.dart';

class CustonMenu extends StatelessWidget {
  const CustonMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //editando corpo do menu
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.cyan,
                child: Image.asset('asset/avatar.png'),
              ),
              accountName: const Text("Gabriel Gomes da Silva"),
              accountEmail: const Text("gabrielgabiga870@gmail.com")),

          // editando (seus dados)
          //tamanho da caixa
          InkWell(
            //row deixando lado a lado
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DadosPaciente()));
            },
          ),

          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.person_3),
                SizedBox(
                  //distanciando icon do texto
                  width: 8,
                ),
                Text(
                  "Minha Conta",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.engineering_rounded),
                SizedBox(
                  //distanciando icon do texto
                  width: 8,
                ),
                Text(
                  "Configurações",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const Divider(),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.exit_to_app_sharp),
                  SizedBox(
                    //distanciando icon do texto
                    width: 8,
                  ),
                  Text(
                    "Sair",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
