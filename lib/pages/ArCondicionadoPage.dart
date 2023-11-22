import 'package:flutter/material.dart';

class ArConficionadoPage extends StatefulWidget{
  const ArConficionadoPage({super.key});

  @override
  State<ArConficionadoPage> createState() => _ArConficionadoPage();
}

class _ArConficionadoPage extends State<ArConficionadoPage>{
  bool Ar1 = false;
  bool Ar2 = false;
  bool Ar3 = false;
  double alturaEntreLinhas = 25;
  TextStyle optionStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      color: Color(0xFF142434));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: alturaEntreLinhas),
          Container(
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Image.asset("assets/images/arcondicionado.jpg", width: 200),
          ),
          SizedBox(height: alturaEntreLinhas),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red,),
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue,),
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
                    height: 10,
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
