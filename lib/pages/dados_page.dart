import 'package:flutter/material.dart';
import 'package:srh/shared/componenteText/componenteTexto.dart';

class DadosPaciente extends StatefulWidget {
  const DadosPaciente({super.key});

  @override
  State<DadosPaciente> createState() => _DadosPacienteState();
}

class _DadosPacienteState extends State<DadosPaciente> {
  //crirando uma variavel de controle de nome
  var crontroleName = TextEditingController(text: "");
  //crirando uma variavel de controle de Date
  var crontroleDate = TextEditingController(text: "");
  DateTime? dataNacimento;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const textedition(
              texto: "Nome: ",
            ),
            // iniciando uma entrada de texto
            TextField(
              controller: crontroleName,
            ),
            const textedition(
              texto: "Data: ",
            ),
            TextField(
              controller: crontroleDate,
              //readOnly usado para dizer se o campo e de leitura ou editavel
              readOnly: true,
              onTap: () async {
                //Seleção de data
                var data = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900, 1, 1),
                    initialDate: DateTime(2000, 1, 1),
                    lastDate: DateTime(2023, 12, 31));
                if (data != null) {
                  crontroleDate.text = data.toString();
                  dataNacimento = data;
                }
              },
            ),
            //botão de texto para salvar
            TextButton(
                onPressed: () {
                  debugPrint(crontroleName.text);
                  print(dataNacimento);
                },
                child: const Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
