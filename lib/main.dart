import 'package:flutter/material.dart';
import 'package:primer_p/tabs/Ayuda_tabs.dart';
import 'package:primer_p/tabs/Lugares_tabs.dart';
import 'package:primer_p/tabs/Registro_tabs.dart';
import 'package:primer_p/tabs/inicio_tabs.dart';

void main()=>runApp(Prueba());

class Prueba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TabController = new DefaultTabController(
      length: 4, //numero de tabs
      child: new Scaffold(
        appBar: new AppBar(backgroundColor: Colors.lightBlueAccent,
          title: new Text('navegacio por tabs'),
          bottom: new TabBar(indicatorColor:Colors.yellow, tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),text: 'inicio'),
            new Tab(icon: new Icon(Icons.contacts),text: 'Registro'),
            new Tab(icon: new Icon(Icons.place),text: 'Lugares'),
            new Tab(icon: new Icon(Icons.help),text: 'Ayuda'),
          ],),
        ),

        body: new TabBarView(children: <Widget>[
          new InicioTabs(),
          new RegistroTabs(),
          new LugaresTabs(),
          new AyudaTabs()
        ]),

      ));

      return new MaterialApp(
        title: 'tabs con flutter',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          
        ),
        home: TabController,
    );
   
  }
}
