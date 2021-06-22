import 'package:flutter/material.dart';
import 'package:frontend/Models/modelsUser.dart';
import 'package:http/http.dart' as http;

class ListaComentarios extends StatelessWidget {
  const ListaComentarios({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Comentarios',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      /* body: FutureBuilder(builder: BuildContext context, AsyncSnapshot<List<User>>), */
    );
  }
}

Future<List<User>> obtenerUser() async {
  final url = Uri.parse('fdfd');
  final respuesta = await http.get(url);

  if (respuesta.statusCode == 200) {
    return userFromJson(respuesta.body);
  } else {
    return null;
  }
}
