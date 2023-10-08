import 'package:ejemplo_app1/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:ejemplo_app1/screens/basic_design.dart';
import 'package:ejemplo_app1/screens/counter_functions_screen.dart';
import 'package:ejemplo_app1/screens/counter_screen.dart';

class MenuScreen extends StatefulWidget {

  final String nombre;

  const MenuScreen({
    super.key, 
    required this.nombre
  });

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  int selectedIndex = 1;

  final List<Widget> _screens = [
    const HomeScreen(name: 'Guillermo'),
    const BasicDesignScreen(),
    const CounterFunctionsScreen(),
    const CounterScreen()
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:IndexedStack(
        index: selectedIndex,
        children: _screens,
      ),
     bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      fixedColor: Colors.black,
      currentIndex: selectedIndex,
      backgroundColor: const Color(0xffc7f7f7),
      items: const [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home),
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.calendar_month),
          icon: Icon(Icons.calendar_month),
          label: 'Citas',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.assist_walker),
          icon: Icon(Icons.assist_walker),
          label: 'Servicios',
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle),
            label: 'Yo',
        ),
      ]
     ),
   );
  }
}

