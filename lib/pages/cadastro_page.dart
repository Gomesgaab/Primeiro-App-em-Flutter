import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  //Shared
  late SharedPreferences storage;
  //crirando uma variavel de controle de nome
  TextEditingController nomeControler = TextEditingController();
  //crirando uma variavel de controle de email
  TextEditingController emailControler = TextEditingController();
  TextEditingController emailConfirmControler = TextEditingController();
  //crirando uma variavel de controle de cpf
  TextEditingController cpfControler = TextEditingController();
  //crirando uma variavel de controle de telefone
  TextEditingController telefoneControler = TextEditingController();

  //um exemplo de utilização de componente para edição de todos os dados de texto de uma vez
  /* Text returnText(String texto) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
    );
  } */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carregarDados();
  }

  carregarDados() async {
    storage = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cadastro"),
        ),
        body: Container(
          color: const Color.fromARGB(132, 188, 218, 1000),
          alignment: Alignment.center,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: TextField(
                  controller: nomeControler,
                  decoration: const InputDecoration(
                      hintText: "Nome:", icon: Icon(Icons.person_2)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: TextField(
                  controller: telefoneControler,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      hintText: "Telefone:", icon: Icon(Icons.phone)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: TextField(
                  controller: emailControler,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Email:", icon: Icon(Icons.email)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: TextField(
                  controller: emailConfirmControler,
                  decoration: const InputDecoration(
                      hintText: "Email:", icon: Icon(Icons.email)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: TextField(
                  controller: cpfControler,
                  decoration: const InputDecoration(
                      hintText: "CPF:", icon: Icon(Icons.crop_free)),
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                    flex: 1,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromARGB(70, 130, 169, 1000))),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => const LoginPage()));
                      },
                      child: const Text("Cancelar"),
                    )),
                Expanded(
                    flex: 1,
                    child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    const Color.fromARGB(70, 130, 169, 1000))),
                        onPressed: () {},
                        child: const Text("Finalizar"))),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
