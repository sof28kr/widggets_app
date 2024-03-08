import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Circular Progress Indicator'),
          SizedBox(
            height: 50,
          ),
          CircularProgressIndicator(
            strokeWidth: 4,
            backgroundColor: Colors.black26,
          ),
          SizedBox(
            height: 50,
          ),
          Text('Indicador Circular Controlado'),
          SizedBox(height: 30),
          _ControledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControledProgressIndicator extends StatelessWidget {
  const _ControledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
