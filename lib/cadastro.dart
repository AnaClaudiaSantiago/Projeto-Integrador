import 'package:flutter/material.dart';
import 'package:projeto_integrador/tela_inicial.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        alignment: Alignment.center,
        color: Color.fromARGB(255, 255, 236, 162),
        child: ListView(
          children: <Widget>[
            Container(
              width: 128,
              height: 128,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("image/logo.png"),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'Nome da Instituiçao ',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'E-mail',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'Telefone',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'Login',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'Senha',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'Recuperar Senha',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              //margin: (EdgeInsets.only(top: 10, left: 20, right: 0)),
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: TextButton(
                  child: Center(
                    child: Text(
                      'Cadrastrar Endereço',
                      
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('endereco');
                  }
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                  child: Text(
                    "Cancelar",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('tela_inicial');
                  }),
                  
            ),
            
          ],
          
        ),
      ),
      
    );
  }
}
