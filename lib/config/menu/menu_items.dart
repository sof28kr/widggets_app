// son las opciones del menu

import 'package:flutter/material.dart';
// import 'package:flutter/material.dart' show IconData;
// hace que solo se muestre los icons del paquete
//lo hace ligero

class MenuItem {
  final String tittle;
  final String Subtitle;
  final String link;
  final IconData icon; // control+. para llamar al constructor automatico

  const MenuItem(
      {required this.tittle,
      required this.Subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      tittle: 'Botones',
      Subtitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      tittle: 'Tarjetas',
      Subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      tittle: 'Progress Indicators',
      Subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
];
