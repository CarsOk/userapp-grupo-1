import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:frontend/Models/2modelsUser.dart';
import 'package:frontend/datosFormulario.dart';

class Formulario extends StatelessWidget {
  //const Formulario({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User2(id: '1');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Formulario',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: [
              Text(
                'Digitar Informacion',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                autofocus: true,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'Nombre Completo',
                  border: OutlineInputBorder(),
                ),
                onChanged: (valor) => users.name = valor,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(),
                ),
                onChanged: (valor) => users.email = valor,
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () async {
                    User2 user = await registrar(users.toJson());
                    if (user != null) {
                      print('Guardado ');
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DatosFormulario(),
                          ));
                    } else {
                      print('NO GUARDADO');
                      final snackBar =
                          SnackBar(content: Text('PROBLEMAS ENCONTRADOS'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text('Guardar')),
            ],
          ),
        ),
      ),
    );
  }

  Future<User2> registrar(Map<String, dynamic> datos) async {
    final url = Uri.parse('http://127.0.0.1:3000/users');
    final respuesta = await http.post(url, body: datos);
    print('Response status: ${respuesta.statusCode}');

    if (respuesta.statusCode == 201) {
      return usuarioFromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
