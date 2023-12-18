import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:srh/service/numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeDeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(224, 6, 203, 233),
        title: Text(
          "Sr.H",
          style: GoogleFonts.alexBrush(),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.purple,
              width: 300,
              height: 200,
              child: Text(
                "Ações do usuario",
                style: GoogleFonts.abel(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Container(
                color: Colors.blue,
                child: Text(
                  "A quantidade de cliques foi de $quantidadeDeCliques Vezes",
                  style: GoogleFonts.abel(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.deepOrange,
                child: Text(
                  "O número gerado foi: $numeroGerado",
                  style: GoogleFonts.abel(fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.grey,
              width: 370,
              height: 300,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blueGrey,
                      child: Text(
                        "20",
                        style: GoogleFonts.abel(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.brown,
                      child: Text(
                        "30",
                        style: GoogleFonts.abel(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.deepPurple,
                      child: Text(
                        "40",
                        style: GoogleFonts.abel(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box_rounded),
        onPressed: () {
          setState(() {
            quantidadeDeCliques = quantidadeDeCliques + 1;
            numeroGerado = NumeroAleatorio.gerarNumeroAleatorio(100);
          });
        },
      ),
    );
  }
}
