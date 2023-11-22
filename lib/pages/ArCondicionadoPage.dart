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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
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

              //linha 1
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red,),
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue,),
                      height: 200,
                      width: 200,
                    ),
                  ),
                ],
              ),

              //linha 2
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Colors.white;
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          Colors.green;
                        });
                      },
                      child: Ink(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFF142434),),
                        height: 200,
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("assets/icons/airconditioner.png", width: 100, color: Colors.white,),
                            ),
                            Text("Ar Condicionado 3", style: TextStyle(fontSize: 16, color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    // child: Ink(
                    //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFF142434),),
                    //   height: 200,
                    //   width: 200,
                    //   child: InkWell(
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           child: Image.asset("assets/icons/airconditioner.png", width: 100, color: Colors.white,),
                    //         ),
                    //         Text("Ar Condicionado 3", style: TextStyle(fontSize: 16, color: Colors.white),)
                    //       ],
                    //     ),
                    //   )
                    // ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
