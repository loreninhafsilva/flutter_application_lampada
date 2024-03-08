// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyLampada extends StatefulWidget {
  const MyLampada({super.key});

  @override
  State<MyLampada> createState() => _MyLampadaState();
}

class _MyLampadaState extends State<MyLampada> {

  Image gatosentado = Image.asset('assets/images/cat-sentada.jpg');
  Image gatoempe = Image.asset('assets/images/cat-empe.jpg');
  late Image gatoAtual = gatosentado;
  Text gatoSentadoTexto = Text('Gato sentado');
  Text gatoempeTexto = Text('Gato em pé');
  Text sentar = Text('Sentar', style: TextStyle(color: Colors.amber),);
  Text levantar = Text('Levantar', style: TextStyle(color: Colors.amber),);
  late Text textoAtual = levantar;
  late Text gatoAtualTexto = gatoSentadoTexto;

  void mudaEstado(){
    if(gatoAtual == gatosentado){
      gatoAtual = gatoempe;
      gatoAtualTexto = gatoempeTexto;
      textoAtual = sentar;
    } else{
      gatoAtual = gatosentado;
      gatoAtualTexto = gatoSentadoTexto;
      textoAtual = levantar;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gatinhos Supremacy",),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 168, 7),
      ),
      body: Center(child: Column(children: [
        gatoAtual,
        gatoAtualTexto,
        SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
          mudaEstado();
          setState(() {
          });
        },
        style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 0, 0, 0), // Cor de fundo do botão
            ),
        child: textoAtual,)
      ]),)
    );
  }
}
