import 'package:flutter/material.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.black
      ),
      home: const NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xffc7f7f7),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month),
            label: 'Citas',
          ),
          NavigationDestination(
            icon: Icon(Icons.assist_walker),
            label: 'Servicios',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.account_circle),
            label: 'Yo',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Bienvenido Guillermo'),
              Text('No hay proximas citas'),
              Column(
                children: [
                  Text('Blog'),
                  Row(
                    children: [
                      Image(image: AssetImage('bursitis.PNG')),
                      Image(image: AssetImage('sedentarismo.PNG')),
                    ],
                  )
                ],
              )
            ],
          ) 
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Agendar una cita'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Servicios'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Mi cuenta'),
        ),
      ][currentPageIndex],
    );
  }
}