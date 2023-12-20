import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/Main_page.dart';
import 'package:primeiro_app/pages/cadastro_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  var emailControler =
      TextEditingController(text: "gabrielgabiga870@gmail.com");
  var senhaControler = TextEditingController(text: "senha");
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // alterando cor de fundo do corpo
        backgroundColor: const Color.fromARGB(255, 210, 210, 215),
        // responsividade
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              //MediaQuery e um metodo de pegar o tamanho do dispositivo
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              //alinhamento
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // criando uma caixa de espaçamento
                const SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    //caixa da logo
                    SizedBox(
                      child: Expanded(
                        flex: 8,
                        child: Image.asset(
                          'asset/Logo.png',
                        ),
                      ),
                    ),
                    //espaçamento da lateral da logo
                    Expanded(child: Container()),
                  ],
                ),

                //espaçamento da logo ´para textos
                const SizedBox(
                  height: 38,
                ),
                //Titulos
                const Text(
                  "Bem-Vindo ao Sr.H",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Ja possui cadastro?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                //espaçamento do titulo para caixa de email
                const SizedBox(
                  height: 30,
                ),

                // conteiner do email
                Container(
                  //definindo margin da caixa de texto email
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  height: 30,
                  // dando o tamanho total da caixa que foi declarado
                  width: double.infinity,
                  // textFild caixa de entrada de texto/ input
                  child: TextField(
                    controller: emailControler,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    //decoration teg para decoração do text fild
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 25),
                      //Arrumando borda e deixando so linha inferior
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      prefixIcon: Icon(Icons.email),

                      //hintText parecida com a label, testo de informação da caixa
                      hintText: "Email",
                    ),
                  ),
                ),

                // container senha
                Container(
                  // dando margin na caixa de texto da senha
                  margin:
                      //symmtric usado para deixar uma simetria de acordo com o valor que você coloca
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  height: 30,
                  // dando o tamanho total da caixa que foi declarado
                  width: double.infinity,
                  //alinhamento
                  alignment: Alignment.center,
                  //caixa de entrada de texto
                  child: TextField(
                    controller: senhaControler,
                    obscureText: isObscureText,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    // decorando caixa de entrada de texto
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 25),
                        //Arrumando borda
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent)),
                        prefixIcon: const Icon(Icons.lock),
                        //estamos detectando ações para executar algo
                        suffixIcon: GestureDetector(
                          //um clique
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          // utilizando ternário para execução de ação
                          child: Icon(isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintText: "Senha"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                //conteiner do botão entrar
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200,
                      child: TextButton(
                          // printando ingormações preencihas quando clicar no botão
                          onPressed: () {
                            if (emailControler.text.trim() ==
                                    "gabrielgabiga870@gmail.com" &&
                                senhaControler.text.trim() == "senha") {
                              //mostrando mensagem a usuário se o logim foi efetuado com sucesso
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text("Login efetuado com sucesso")));
                              //Navegação entre as pages
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage()));
                            } else {
                              //mostrando mensagem a usuário se o logim foi efetuado
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Erro ao efetuar login, email ou senha incorretos")));
                            }
                          },
                          style: ButtonStyle(
                              //border radios do botão
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 222, 222, 223))),
                          child: const Text(
                            "Entrar",
                            style: TextStyle(
                                color: Color.fromARGB(221, 76, 113, 138),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )),
                    )),
                // espacamento
                Expanded(child: Container()),
                // fim botão entrar
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci Minha Senha:",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //Navegação entre as página cadastro
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TelaCadastro()));
                  },
                  child: const Text(
                    "Criar Conta",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 186, 248),
                        fontSize: 18,
                        fontWeight: FontWeight.w200),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
