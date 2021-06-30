import 'package:flutter/material.dart';

import 'package:frontend/Models/2modelsUser.dart';
import 'package:frontend/listaUsuarios.dart';

class DatosFormulario extends StatelessWidget {
  //const DatosFormulario({Key key}) : super(key: key);
  final User2 user2;
  DatosFormulario(this.user2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuario',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Id del Usuario',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.person_pin_circle,
              color: Colors.black,
              size: 32.0,
            ),
            subtitle: Text(
              user2.id,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Nombre del Usuario',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.person_pin_rounded,
              color: Colors.black,
              size: 32.0,
            ),
            subtitle: Text(
              user2.name,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Correo del Usuario',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.email,
              color: Colors.black, 
              size: 32.0,
            ),
            subtitle: Text(
              user2.email,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Edad del Usuario',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.format_list_numbered,
              color: Colors.black, 
              size: 32.0,
            ),
            subtitle: Text(
              user2.age,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.exit_to_app,
          size: 30.0,
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ListaUsuarios()));
        },
      ),
    );
  }
}
