import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  String mensagem = '';

  @override
  Widget build(BuildContext context) {
    print('build');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Demo'),
        ),
        body: Center (
          child: Column(
            children: [
              Text('Você clicou $contador vezes'),
              Text(mensagem),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(contador >= 10){
                mensagem = 'Você excedeu as 10 vezes';
              } else {
                contador++;  
              }
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}