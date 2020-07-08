import 'package:clone_youtube/screens/Biblioteca.dart';
import 'package:clone_youtube/screens/EmAlta.dart';
import 'package:clone_youtube/screens/Inicio.dart';
import 'package:clone_youtube/screens/Inscricao.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  MaterialColor colorsAppBar = Colors.grey;

  int _indexBottomBar = 0;

  Widget build(BuildContext context) {
    
    List<Widget> screnns = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: colorsAppBar, opacity: 1),
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                print("acao: videocam");
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("acao: search");
              }),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                print("acao: account");
              }),
        ],
      ),
      body: screnns[_indexBottomBar],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: _indexBottomBar,
        onTap: (index){
          setState(() {
            _indexBottomBar = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            title: Text("Início"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.whatshot),
            title: Text("Em alta"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(Icons.subscriptions),
            title: Text("Inscrições"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.folder),
            title: Text("Biblioteca"),
          ),
        ],
      ),
    );
  }
}
