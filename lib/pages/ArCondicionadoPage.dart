import 'package:flutter/material.dart';
class ArConficionadoPage extends StatefulWidget{
  const ArConficionadoPage({super.key});

  @override
  State<ArConficionadoPage> createState() => _ArConficionadoPage();
}

class _ArConficionadoPage extends State<ArConficionadoPage>{
  double alturaEntreLinhas = 25;
  TextStyle optionStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      color: Color(0xFF142434));
  bool isPressed1 = true;
  bool isPressed2 = true;
  bool isPressed3 = true;

  @override
  Widget build(BuildContext context) {
    Offset distance = Offset(5, 5);
    double altBtns = 120;
    double larBtns = 300;
    //=========btn 1
    double blur1 = isPressed1 ? 15.0 : 25.0;
    Color cor1 = isPressed1 ? Color(0xFF142434) : Color(0xFF0c151f);
    String texto1 = isPressed1 ? "OFF" : "ON";
    //=========btn 2
    double blur2 = isPressed2 ? 15.0 : 25.0;
    Color cor2 = isPressed2 ? Color(0xFF142434) : Color(0xFF0c151f);
    String texto2 = isPressed2 ? "OFF" : "ON";
    //=========btn 3
    double blur3 = isPressed3 ? 15.0 : 25.0;
    Color cor3 = isPressed3 ? Color(0xFF142434) : Color(0xFF0c151f);
    String texto3 = isPressed3 ? "OFF" : "ON";
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
                    child: GestureDetector(
                      onTap: () => setState(() => isPressed1 = !isPressed1),
                      child: Container(
                        height: altBtns,
                        width: larBtns,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: cor1,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: blur1,
                              offset: -distance,
                              color: Color(0xFF0e1924),
                            ),
                            BoxShadow(
                              blurRadius: blur1,
                              offset: distance,
                              color: Color(0xFFA7A9AF),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Image.asset("assets/icons/airconditioner.png", width: 80, color: Colors.white,),
                                ),
                                Text(texto1, style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],
                            ),
                            Text("Ar Condicionado 1", style: TextStyle(fontSize: 16, color: Colors.white),),

                          ],
                        ),
                      ),
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
                    child: GestureDetector(
                      onTap: () => setState(() => isPressed2 = !isPressed2),
                      child: Container(
                        height: altBtns,
                        width: larBtns,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: cor2,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: blur2,
                              offset: -distance,
                              color: Color(0xFF0e1924),
                            ),
                            BoxShadow(
                              blurRadius: blur2,
                              offset: distance,
                              color: Color(0xFFA7A9AF),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Image.asset("assets/icons/airconditioner.png", width: 80, color: Colors.white,),
                                ),
                                Text(texto2, style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],
                            ),
                            Text("Ar Condicionado 2", style: TextStyle(fontSize: 16, color: Colors.white),),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //linha 3
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () => setState(() => isPressed3 = !isPressed3),
                      child: Container(
                        height: altBtns,
                        width: larBtns,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: cor3,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: blur3,
                              offset: -distance,
                              color: Color(0xFF0e1924),
                            ),
                            BoxShadow(
                              blurRadius: blur3,
                              offset: distance,
                              color: Color(0xFFA7A9AF),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Image.asset("assets/icons/airconditioner.png", width: 80, color: Colors.white,),
                                ),
                                Text(texto3, style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],
                            ),
                            Text("Ar Condicionado 3", style: TextStyle(fontSize: 16, color: Colors.white),),

                          ],
                        ),
                      ),
                    ),
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
