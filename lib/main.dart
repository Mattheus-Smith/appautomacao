import 'package:appautomacao/pages/ArCondicionadoPage.dart';
import 'package:appautomacao/pages/IluminacaoPage.dart';
import 'package:appautomacao/pages/LembretesPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        //scaffoldBackgroundColor: Color(0xFF142434),  //todas as paginas vao herdar esse background
        scaffoldBackgroundColor: Colors.white,  //todas as paginas vao herdar esse background
        useMaterial3: true,
      ),
      home: const MenuPage(title: 'Pagina Inicial Super'),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  final paginas = [
    ArConficionadoPage(),
    IluminacaoPage(),
    LembretesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Ar Condicionado',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.lightbulb),
            label: 'Iluminação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_outlined),
            label: 'Lembretes',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Color(0xFF142434),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        iconSize: 25,
        unselectedFontSize: 12,
        selectedFontSize: 16,
        //showUnselectedLabels: false, //nao mostra o label dos nao selecionados
        onTap: _onItemTapped,
      ),
    );
  }
}

