import 'package:ejemplo_app1/screens/basic_design.dart';
import 'package:ejemplo_app1/screens/counter_functions_screen.dart';
import 'package:ejemplo_app1/screens/counter_screen.dart';
import 'package:ejemplo_app1/screens/home.dart';
import 'package:ejemplo_app1/screens/menu.dart';
import 'package:ejemplo_app1/screens/menu_screen.dart';
import 'package:ejemplo_app1/screens/scroll_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp() );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.black
      ),
      title: 'Prophysio',
      initialRoute: 'menu_screen',
      routes: {
        'basic_design': ( _ ) => const BasicDesignScreen(),
        'scroll_screen': ( _ ) => const ScrollScreen(),
        'home_screen': ( _ ) => const HomeScreen(name: 'Guillermo'),
        'menu_screen': ( _ ) => const MenuScreen(nombre: 'Guillermo')
      },
      //home: const Menu()
    );
  }

}

