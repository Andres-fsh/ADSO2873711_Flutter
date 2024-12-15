import 'package:app_api_adso_01/controllers/mycontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'interfacez/principal.dart';
import 'interfacez/inicio.dart';
import 'reqresp/listaUsuarios.dart';

void main(List<String> args){
  Get.put(Mycontroller());
  runApp(Principal());
}

Mycontroller miControlador = Get.find();

List<dynamic> opcionPaginas = [
  Inicio(), //en la posicion 0, inicio
  ListaUsuarios(), //1. Lista usuarios
  ];