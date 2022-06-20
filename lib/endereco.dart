import 'package:flutter/material.dart';

class Endereco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 255, 236, 162),
      padding: EdgeInsets.only(top: 60, left: 40, right: 40),
      child: ListView(
        children: <Widget>[
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'CEP',
                  
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'LOGRADOURO',
                  fillColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green)),
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Container(
            height: 10,
          ),
           Container(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'N',
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'COMPLEMENTO',
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'CIDADE',
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  labelText: 'UF',
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
                      'Cadrastrar ',
                      
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('tela_inicial');
                  }),
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
    ));
  }
}
