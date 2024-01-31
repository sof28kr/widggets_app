import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'buttons_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text ('Buttons Screen'),
      ),
      body: const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: (){
          // lo usamos asi porque tenemos el router
          context.pop();
        },
      ),
        
      
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical:40),
      // wrap se parece a una columna, pero en horizontal
      // se llena una detras de otra y luego pasa a la sigueinte linea 
      child: Wrap(
        children: [

          // botton normalito
          ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
          // el mismo botton normalito pero desabilitado
          ElevatedButton(onPressed: null , child: const Text('Elevated Disabeled')),
          ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
          
        ],
      ),
    );
  }
}