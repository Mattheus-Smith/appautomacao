import 'package:flutter/material.dart';

class IluminacaoPage extends StatefulWidget{
  const IluminacaoPage({super.key});

  @override
  State<IluminacaoPage> createState() => _IluminacaoPage();
}

class _IluminacaoPage extends State<IluminacaoPage>{

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page Iluminacao'),
          ],
        ),
      )

    );
  }
}
