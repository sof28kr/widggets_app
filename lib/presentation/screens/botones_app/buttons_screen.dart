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
        child: const Icon(Icons.arrow_back_ios),
        onPressed: (){
          // lo usamos asi porque tenemos el router
          context.pop();
        },
      ),
        
      
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical:40),
        // wrap se parece a una columna, pero en horizontal
        // se llena una detras de otra y luego pasa a la sigueinte linea 
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
      
            // botton normalito
            ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
            // el mismo botton normalito pero desabilitado
            const ElevatedButton(onPressed: null , child: Text('Elevated Disabeled')),
            ElevatedButton.icon(
              onPressed:(){}, 
              label: const Text('Elevated Icon' ),
              icon: const Icon(Icons.access_alarm_rounded,  )
              ),
            FilledButton(onPressed: (){}, child: const Text('Filled button')),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.auto_fix_high), label: const Text('Filled Icon')),
            IconButton.filled(onPressed: (){}, icon: const Icon(Icons.auto_fix_high)),
            OutlinedButton(onPressed: (){}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: (){}, 
              label: const Text('Outline Icon'),
              icon: const Icon( Icons.terminal)
            ),

            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.account_box_outlined),
              label: const Text('Text Icon'),
            ),

            

            IconButton(onPressed: (){}, icon: const Icon( Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon( Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              
              ),
            ),
            
            const BotonPersonalizado(),

          ],
        ),
      ),
      
    );
  }
}

// Icono personalizado, puede ser reutilizado en toda la aplicacion 

class BotonPersonalizado extends StatelessWidget {
  const BotonPersonalizado({super.key});

  @override
  Widget build(BuildContext context) {
    // siguiendo la paleta con la que se estaba trabajando
    final colors = Theme.of(context).colorScheme;

    // envolvemos material en cliprreact
    // para colocar los bordes redondeados
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        // material amplia la personalizacion que le podemos dar al boton
        
        // siguiendo la paleta con la que se estaba trabajando
        color: colors.secondary,
      
        // Color personalizado, fondo del color
        // color: Colors.blue,
      
      
        // inkwell nos da el efecto de velo al hacer click en un boton
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: 
            Text(
              'uwu Boton Personalizado',
          
              style: TextStyle(
                color: Colors.white),)
            ),
        ),
      ),
    );
  }
}