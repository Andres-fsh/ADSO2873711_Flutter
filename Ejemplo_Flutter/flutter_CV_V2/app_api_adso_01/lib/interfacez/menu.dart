import 'package:app_api_adso_01/api/reqresApi.dart';
import 'package:app_api_adso_01/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Inicio"),
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Get.back();
              miControlador.setTitulo("Consumo ded APIs 01");
              miControlador.setPagina(0 );
            },
          ),
          ListTile(
            title: Text("Lista de usuarios"),
            leading: Icon(Icons.people),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () async {
              Get.back();
              miControlador.setTitulo("Lista Usuarios - Reqres.in");
              final response = await obtenerUsuarios();
              //Se asigna la lista que llega de API a la lista rewactiva de nuestra app (controller)
              miControlador.setListaUsuariosReqRes(response["data"]);
              //print(response["data"]);
              miControlador.setPagina(1);
            },
          )
        ],
      ),
    );
  }
}