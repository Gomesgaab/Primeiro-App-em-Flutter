import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/dados_page.dart';
import 'package:primeiro_app/pages/login_page.dart';
import 'package:primeiro_app/pages/paginacao/configuracao_page.dart';

class CustonMenu extends StatelessWidget {
  const CustonMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //editando corpo do menu
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext bc) {
                    return Wrap(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: const Text("Camera"),
                          leading: const Icon(Icons.camera_alt_outlined),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: const Text("Galeria"),
                          leading: const Icon(Icons.photo_album),
                        ),
                      ],
                    );
                  });
            },
            child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(70, 130, 169, 10)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Image.asset('asset/avatar.png'),
                ),
                accountName: const Text("Gabriel Gomes da Silva"),
                accountEmail: const Text("gabrielgabiga870@gmail.com")),
          ),

          // editando (seus dados)
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.person_3),
                  //distanciando icon do texto
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Minha Conta",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            //efeito de clic
            onTap: () {},
          ),
          const Divider(),
          //tamanho da caixa
          InkWell(
            //row deixando lado a lado
            child: const Padding(
              // dando um padding com simetria
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
              //fechando a pagina assim que clicar no botão
              Navigator.pop(context);
              //chamando outa page
              Navigator.push(
                  context,
                  //definindo qual a rota do material a ser puxada
                  MaterialPageRoute(
                      builder: (context) => const DadosPaciente()));
            },
          ),
          //linha de divisão
          const Divider(),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.engineering_rounded),
                  //distanciando icon do texto
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Configurações",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            //efeito de clic/ação ao clicar
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (contex) => const ConfiguracaoPage()));
            },
          ),
          //divisoria
          const Divider(),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.exit_to_app_sharp),
                  //distanciando icon do texto
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Sair",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            //efeito de clic
            onTap: () {
              // assim que clicar (showdialog) caixa de dialogo flutuante
              showDialog(
                  context: context,
                  builder: (BuildContext bc) {
                    //retornando um alerta
                    return AlertDialog(
                      //centraalizando
                      alignment: Alignment.centerLeft,
                      //wrap mesma função do colunn porem ajusta o tamanho da caixa de acordo com o conteudo.
                      content: const Wrap(
                        children: [
                          Text("Deseja sair do aplicativo?"),
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Não")),
                        //pushReplacement vai sair e substituir a tela
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const LoginPage())));
                            },
                            child: const Text("Sim"))
                      ],
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
