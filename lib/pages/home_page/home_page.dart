import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('This is an example appBar')
        ),
        body: Center(
          child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/layout-example'),
          child: const Text('Navigate to Second Page'),
        ),
        ),
    );
  }
}