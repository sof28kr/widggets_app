import 'package:flutter/material.dart';

const cards = <Map<String,dynamic>>{
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  
};






class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  static const String name = 'Cards_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text ('Cards Screen'),
      ),
      body: const _CardsViewr(),
    );
  }
}

class _CardsViewr extends StatelessWidget {
  const _CardsViewr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      
    );
  }
}