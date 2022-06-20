import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:projeto_integrador/cadastro.dart';
import 'package:projeto_integrador/endereco.dart';
import 'package:projeto_integrador/homepage.dart';
import 'package:projeto_integrador/homepage1.dart';
import 'package:projeto_integrador/login.dart';
import 'package:projeto_integrador/home.dart';
import 'package:projeto_integrador/tela_inicial.dart';

import 'MyStatefulWidge.dart';
import 'mensagem_final.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          primarySwatch: Colors.green,
          floatingActionButtonTheme:const FloatingActionButtonThemeData(
       backgroundColor: Color.fromARGB(250, 255, 179, 0),
          ),
         appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(137, 34, 34, 34),
     
      
    ),
     //TextStyle
  ), //AppBa
         ) ,     
          
        
        
        
        routes: {
          '/': (context) =>  tela_inicial(),
          'tela_inicial': (context) => tela_inicial(),
         'cadastro': (context) => Cadastro(),
         'login': (context) => login(),
        'homepage': (context) => Homepage(),
         'homepage1': (context) => Homepage1(),
         'home': (context) => Home(),
          'endereco': (context) => Endereco(),
           'mystatefulwidge': (context) => MyStatefulWidget(),
            'mensgem-final': (context) =>  MensagemFinal(),



       });
  }
}
