import 'package:flutter/material.dart';

class LugaresTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          //agregamos una imagen
          new Container(
            margin: const EdgeInsets.all(10.0), //margenes pàra todos los lados
            width: 350.0,
            height: 350.0,
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/imagenes/dd.jpg"),
              fit: BoxFit.cover,
              ),
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 390.0, left: 25.0),
            child: new RaisedButton(
            padding: const  EdgeInsets.only(top: 20, left: 100,right: 100, bottom: 20),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: (){
              Scaffold
              .of(context)
              .showSnackBar(SnackBar(content: Text("Te"),
              )
              );
            },
            ),
          ),
        ]
      ),
    );
  }
}