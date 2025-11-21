import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const EsercizioLista());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello mondo !'))),
    );
  }
}

final List<OggettoLista> ListaOggetti = [
  OggettoLista(
    nome: "Ortofrutta",
    url:
        "https://www.saporie.com/assets/it/news/news/come%20fare%20la%20spesa%20settimanale.jpg?_u=e94b195fa261978d57d1dbe8ee51953dfb4762f0",
  ),
  OggettoLista(
    nome: "Pane",
    url:
        "https://www.cucchiaio.it/content/cucchiaio/it/ricette/2024/01/pane-fatto-in-casa-veloce/jcr:content/page_images/ogImage.img10.jpg/1705004545442.jpg",
  ),
  OggettoLista(
    nome: "Bibite",
    url: "https://inconsegna.com/wp-content/uploads/2020/10/bevande.png",
  ),
];

class EsercizioLista extends StatelessWidget {
  const EsercizioLista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lista della Spesa', style: TextStyle(fontSize: 20)),
        ),
        body: ListView.builder(
          itemCount: ListaOggetti.length,
          itemBuilder: (context, index) {
            final elemento = ListaOggetti[index];

            return Padding(
              padding: EdgeInsets.all(7),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(3),
                    ),

                    child: Row(
                      children: [
                        Image.network(width: 60, height: 60, elemento.url),

                        Text(elemento.nome),
                        Spacer(),
                        Icon(Icons.arrow_right_sharp),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class OggettoLista {
  final String nome;
  final String url;

  //Costruttore della calsse
  OggettoLista({required this.nome, required this.url});
}



class InserimentoOggetti extends StatelessWidget {
  const InserimentoOggetti({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello mondo !'))),
    );
  }
}