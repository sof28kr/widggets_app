import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widggets_app/config/menu/menu_items.dart';
import 'package:widggets_app/presentation/screens/home/botones_app/buttons_screen.dart';
import 'package:widggets_app/presentation/screens/home/cards/cards_screen.dart';

class HomeScreen  extends StatelessWidget {

  // static hace que el nombre no cambie, algo parecido al const
  // static tambien nos ayuda a no tener que crear instancias con este parametro
  static const String name = 'Home_Screen';

  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        centerTitle: false,
      ),
      body: const _HomeView(),
      // se extrae el widget en el mismo ARCHIVO
      //  se usa una variable rpivada 
    );
  }
}




class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    // appMenuItems
    // para exportar la dependencia

    // Esta es una lista para la homeScreen

    // forma basica

    //return ListView.builder(
      //physics: BouncingScrollPhysics(),
      //delimita el numero de
      //itemCount: appMenuItems.length,
      //itemBuilder:(context, index) {
        //final menuItem = appMenuItems[index];
        // return Text(menuItem.tittle);
        // solo regresa los textos como una lista
        //return ListTile(
          //title: Text(menuItem.tittle),
          //subtitle: Text(menuItem.Subtitle),
        //);
      //},
    //);

    return ListView.builder(
      physics: BouncingScrollPhysics(),
      //delimita el numero de
      itemCount: appMenuItems.length,
      itemBuilder:(context, index) {
        final menuItem = appMenuItems[index];
        // return Text(menuItem.tittle);
        // solo regresa los textos como una lista
        return _CustomListTitle(menuItem: menuItem);
      },
    );

  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    // trae el color el apptheme
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      //aplica el color primario de la paleta selecionada
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuItem.tittle),
      subtitle: Text(menuItem.Subtitle),
      onTap: (){

        //opcion con router:
        // opcion para que cada item tenga su propio camino
        // context.push(menuItem.link);

        //opcion usando los nombres
        context.pushNamed(CardsScreen.name);
        // tambien se puede hacer con cada uno, pero se necesitaria declarar en munu items el nombre del parametro nombre

        // opcion con rutas

        //Navigator.pushNamed(context, menuItem.link);

        // opcion A)

        //Navigator.push(
        //context,
       // MaterialPageRoute(builder: (context) => const ButtonsScreen()),
        //);
        
      },
    );
  }
}

