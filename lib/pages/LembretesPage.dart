import 'package:flutter/material.dart';

class LembretesPage extends StatefulWidget{
  const LembretesPage({super.key});

  @override
  State<LembretesPage> createState() => _LembretesPage();
}

class _LembretesPage extends State<LembretesPage>{

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page Lembretes'),
          ],
        ),
      )

    );
  }
}
