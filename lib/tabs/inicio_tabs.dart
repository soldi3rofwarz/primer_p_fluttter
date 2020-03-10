import 'package:flutter/material.dart';

class InicioTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBDFFFA),
      appBar: new AppBar(backgroundColor: Colors.blueGrey,
        
        title: new Text("Registro del cliente"),
        actions: <Widget>[ 
          new IconButton(icon: const Icon(Icons.save),
          onPressed: (){},
          )
        ]
      ),
      body: new Column( 
        children: <Widget>[ 
    

          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(decoration: new InputDecoration(
              hintText: "Nombre"
            ),),
            ),
            new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(decoration: new InputDecoration(
              hintText: "Telefono"
            ),),
            ),
            new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(decoration: new InputDecoration(
              hintText: "Email"
            ),),
            ),
          
            const Divider(
              height:9.0,
              color: Colors.lime,
            ),
            new ListTile(
            leading: const Icon(Icons.today),
             title: Text("Cumpleaños"),
             subtitle: const Text ("Algun dia"),
            ),
          
        ]
      ),
    );
  }
}