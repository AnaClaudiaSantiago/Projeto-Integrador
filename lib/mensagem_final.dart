import 'package:flutter/material.dart';

class MensagemFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 255, 236, 162),
        actions: [
           Container(
            width: 40,
            child: FlatButton(
              child: Icon(
                Icons.menu,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {
                 Navigator.of(context).pushNamed('tela_inicial'),
              },
            ),
          ),
        ]),

      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        alignment: Alignment.center,
        color: Color.fromARGB(255, 255, 236, 162),
        child: ListView(
          children: <Widget>[
         Container(
          height: 100,
         ),
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("image/logo.png"),
                ),
              ),
            ),
         
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Text(
                "Agradecemos o Agendamento!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 23),
                
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: Text(
                "SENAC BETIM",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: Text(
                "Turma 058.2021.0203",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
