import 'package:flutter/material.dart';
import 'package:srh/service/repositorios/repositorio_linguagens.dart';
import 'package:srh/service/repositorios/repositorios_nivel.dart';
import 'package:srh/shared/componenteText/componenteTexto.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  //crirando uma variavel de controle de nome
  var name = TextEditingController(text: "");
  //crirando uma variavel de controle de Date
  var crontroleDate = TextEditingController(text: "");
  DateTime? dataNacimento;
  bool salvando = false;

  //um exemplo de utilização de componente para edição de todos os dados de texto de uma vez
  /* Text returnText(String texto) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
    );
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus dados"),
      ),
      body: Padding(
        // editando posição
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        //utilizando listview para rolagem de tela, sendo assim não ocorrera o erro de indentificação de tamanho de tela.
        child: salvando
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  // iniciando uma entrada de texto
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: double.infinity,
                    child: TextField(
                      controller: name,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        prefix: Icon(Icons.person_2),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: "Nome Completo:",
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: double.infinity,
                    child: TextField(
                      controller: name,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        prefix: Icon(Icons.email),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: "Email:",
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: double.infinity,
                    child: TextField(
                      controller: name,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        prefix: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: "Senha:",
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: double.infinity,
                    child: TextField(
                      controller: name,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 13),
                        prefix: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: "Comfirme Sua Senha",
                      ),
                    ),
                  ),

                  //botão de texto para salvar
                  TextButton(
                      onPressed: () {
                        // limpando variavel de carregamento
                        setState(() {
                          salvando = false;
                        });
                        if (name.text.trim().length < 3) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  "Todos os campos devem ser preenchido para continuar!")));
                          return;
                        }
                        if (dataNacimento == null) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  "Todos os campos devem ser preenchido para continuar!")));
                          return;
                        }
                        setState(() {
                          salvando = true;
                        });
                        Future.delayed(const Duration(seconds: 2), () {
                          setState(() {
                            salvando = false;
                          });
                        });
                      },
                      child: const Text("Salvar"))
                ],
              ),
      ),
    );
  }
}
