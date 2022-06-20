import 'package:flutter/material.dart';

class tela_inicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
         backgroundColor: Color.fromARGB(255, 255, 236, 162),
        actions: <Widget>[
          Container(
            width: 40,
            child: FlatButton(
              child: Icon(
                Icons.account_circle,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {
                Navigator.of(context).pushNamed('login'),
              },
            ),
          ),
        
        ],
      ),
             drawer: Drawer(
              backgroundColor: Color.fromARGB(255, 255, 236, 162),  
        child:
        ListView(
          
          children:<Widget> [
          UserAccountsDrawerHeader(
            currentAccountPicture:
             ClipOval(
              child: Image.asset(
                 'image/logo.png'),
            ),
            accountName: Text('Ana claudia'),
              
           
            accountEmail: Text('anna.cllaudia2010@hotmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('home'),
            subtitle: Text('menu'),
           onTap: () {
              Navigator.of(context).pushReplacementNamed('home');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Login'),
            subtitle: Text('Entrar'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('login');
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('sair'),
            subtitle: Text('sair'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('tela_inicial');
            },
          ),
        ]),
        
      ),
       
      body: Container(
        alignment: Alignment.bottomCenter,

        //padding:EdgeInsets.only(1.0),

        color: Color.fromARGB(255, 255, 236, 162),

        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ButtonTheme(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            child: SizedBox(
              width: 228,
              height: 228,
              child: Image.asset("image/agenda_solidaria.png"),
            ),
          ),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: (EdgeInsets.only(top: 10, left: 5, right: 10)),
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: TextButton(
                    child: Center(
                      child: Text(
                        'Locais de entrega',
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('home');
                    }),
              ),
              Container(
                margin: (EdgeInsets.only(top: 10, left: 50, right: 10)),
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: TextButton(
                    child: Center(
                      child: Text(
                        'Cadastrar local',
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('cadastro');
                    }),
              ),
            ],
          ),
          Container(
            height: 100,
          ),
        ]),
      ),
    );
  }
}
