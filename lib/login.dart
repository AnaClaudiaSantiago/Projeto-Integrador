import 'package:flutter/material.dart';

class login extends StatelessWidget {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Agendar Atendimento'),
          backgroundColor: Color.fromARGB(255, 255, 236, 162),

        centerTitle: true,
        
      ),
      
      body:
       Container(
        
        color: Color.fromARGB(255, 255, 236, 162),
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        
        child: ListView(children: [

          SizedBox(
            width: 228,
            height: 228,
            child: Image.asset("image/agenda_solidaria.png"),
          ),
          Container(
            height: 20,
          ),
          
          Container(
            
            child: TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'email',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(
            height: 10,
            
          ),
          Container(
            child: TextField(
              onChanged: (text) {
                senha = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'senha',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Container(
            height: 80,
          ),

           Container(
              
              //margin: (EdgeInsets.only(top: 10, left: 20, right: 0)),
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              
              child:  RaisedButton(
              
              textColor: Colors.black,
              color: Colors.green,
              onPressed: () {
                if (email == 'Ana@senac.com.br' && senha == '123') {
                  Navigator.of(context).pushReplacementNamed('home');
                } else {
                  print('invalido');
                }
              },
              child: Text(
                'Acessar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
                  ),
            ),
         
          
          Container(
              height: 10,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)))),
          Text(
            'Recuperar Senha',
            textAlign: TextAlign.right,
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: FlatButton(
                child: Text(
                  'Cancelar',
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('tela_inicial');
                }),
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
