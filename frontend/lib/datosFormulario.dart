import 'package:flutter/material.dart';

class DatosFormulario extends StatelessWidget {
  const DatosFormulario({Key key}) : super(key: key);

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
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.person_add_alt,
              color: Colors.black,
            ),
            subtitle: Text(
              user.id,
            ),
          ),
          ListTile(
            title: Text(
              'Nombre del Usuario',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            subtitle: Text(
              user.name,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Correo del Usuario',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.email,
              color: Colors.black,
            ),
            subtitle: Text(
              user.email,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    )
  }
}