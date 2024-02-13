import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.pink 
];

class AppTheme {
  final int selectedColor;
  
  AppTheme({ 
    this.selectedColor = 0 

  }):assert(
    selectedColor >=0, 
    'El color seleccionado debe ser mayor a 0'
  ),
   assert(
    selectedColor < colorList.length,  
    'El color seleccionado debe ser menor o igual a ${colorList.length - 1}'
  )
  
  ;

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      
    )
  );

}