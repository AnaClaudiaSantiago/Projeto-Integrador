import 'package:flutter/material.dart';

class Homepage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 236, 162),
        title: Center(),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("image/logo.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
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
          Container(
                      height: 10,
                      width: 10,
                    ),
        ],
      ),
      body: Container(
          color: Color.fromARGB(255, 255, 236, 162),
          child: ListView(
            children: <Widget>[
              Card(
                color: Color.fromARGB(255, 255, 236, 162),
                margin: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 280,
                      width: 280,
                      child: Image.asset("image/estaçao.png"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      //margin: (EdgeInsets.only(top: 10, left: 20, right: 0)),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: TextButton(
                          child: Center(
                            child: Text(
                              'Agendar ',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('mystatefulwidge');
                          }),
                    ),
                    Container(
                      height: 10,
                      width: 10,
                    ),
                  ],
                ),
              ),
              Card(
                color: Color.fromARGB(255, 255, 236, 162),
                margin: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 280,
                      width: 280,
                      child: Image.asset("image/RaulSoares.jpeg"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      //margin: (EdgeInsets.only(top: 10, left: 20, right: 0)),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: TextButton(
                          child: Center(
                            child: Text(
                              'Agendar',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('mystatefulwidge');
                          }),
                    ),
                    Container(
                      height: 10,
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
