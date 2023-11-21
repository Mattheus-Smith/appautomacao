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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, //Center Row contents horizontally,
          crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
              children: [
                Text('Ar Condicionado 1', style: optionStyle),
                Switch(value: Ar1, activeColor: Color(0xFF142434) ,onChanged: (value) {
                  setState(() {
                    Ar1 = value;
                  });
                })
              ],
            ),
            SizedBox(height: alturaEntreLinhas),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
              children: [
                Text('Ar Condicionado 2', style: optionStyle),
                Switch(value: Ar2, activeColor: Color(0xFF142434) ,onChanged: (value) {
                  setState(() {
                    Ar2 = value;
                  });
                })
              ],
            ),
            SizedBox(height: alturaEntreLinhas),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
              children: [
                Text('Ar Condicionado 3', style: optionStyle),
                Switch(value: Ar3, activeColor: Color(0xFF142434) ,onChanged: (value) {
                  setState(() {
                    Ar3 = value;
                  });
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
