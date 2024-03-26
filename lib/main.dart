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
  final limite = 10;

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Você clicou $contador vezes'),
              if(contador >= limite)
              Text(
                'Limite atingido!',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(contador <10){
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