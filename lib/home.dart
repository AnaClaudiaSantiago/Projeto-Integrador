import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 236, 162),
        title: Center(
          child: SizedBox(
            width: 60,
            //child: Image.asset("image/logo.png"),
          ),
        ),
        leading: Container(
          height: 40,
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
                Icons.add,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {
                Navigator.of(context).pushNamed('cadastro'),
              },
            ),
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
                  Row(
                    children: [
                      Container(
                        margin: (EdgeInsets.only(top: 10, left: 5, right: 10)),
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          color: Colors.black,
                          image: new DecorationImage(
                            image: AssetImage("image/PraçaRodoviaria.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: MaterialButton(
                          // shape: CircleBorder(
                          // side: BorderSide(
                          //  width: 2, color: Colors.black38, style: BorderStyle.solid),

                          // child: Image.asset('image/estaçao.png'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('homepage');
                          },
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    title: Text("Praça da Rodoviaria"),
                    trailing: Icon(Icons.more_vert),
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
                  Row(
                    children: [
                      Container(
                        margin: (EdgeInsets.only(top: 10, left: 5, right: 10)),
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          color: Colors.black,
                          image: new DecorationImage(
                            image: AssetImage("image/peixe.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: MaterialButton(
                          // shape: CircleBorder(
                          // side: BorderSide(
                          //  width: 2, color: Colors.black38, style: BorderStyle.solid),

                          // child: Image.asset('image/estaçao.png'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('homepage');
                          },
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    title: Text("Praça do peixe"),
                    trailing: Icon(Icons.more_vert),
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
                  Row(
                    children: [
                      Container(
                        margin: (EdgeInsets.only(top: 10, left: 5, right: 10)),
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          color: Colors.black,
                          image: new DecorationImage(
                            image: AssetImage("image/RaulSoares.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: MaterialButton(
                          // shape: CircleBorder(
                          // side: BorderSide(
                          //  width: 2, color: Colors.black38, style: BorderStyle.solid),

                          // child: Image.asset('image/estaçao.png'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('homepage1');
                          },
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    title: Text("Praça Raul Soares"),
                    trailing: Icon(Icons.more_vert),
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
                  Row(
                    children: [
                      Container(
                        margin: (EdgeInsets.only(top: 10, left: 5, right: 10)),
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          color: Colors.black,
                          image: new DecorationImage(
                            image: AssetImage("image/estaçao.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: MaterialButton(
                          // shape: CircleBorder(
                          // side: BorderSide(
                          //  width: 2, color: Colors.black38, style: BorderStyle.solid),

                          // child: Image.asset('image/estaçao.png'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('homepage1');
                          },
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    title: Text("Praça da Estaçao"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
