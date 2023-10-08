import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prophysio'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            }, 
            icon: const Icon(Icons.refresh_outlined)
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', 
              style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${ clickCounter == 1 ? '' : 's'}', style: const TextStyle( fontSize: 100, fontWeight: FontWeight.w100))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFloatingButton(
            icon: Icons.home,
            name: 'Inicio',
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
          ),

          const SizedBox( width: 15,),

          CustomFloatingButton(
            icon: Icons.calendar_month,
            name: 'Citas',
            onPressed: () {
              clickCounter--;
              setState(() {});
            },
          ),

          const SizedBox( width: 15,),

          CustomFloatingButton( 
            icon:Icons.assist_walker,
            name: 'Servicios',
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
          ),

        ],
      )
    );
  }
}


class CustomFloatingButton extends StatelessWidget {

  final IconData icon;
  final String name;
  final VoidCallback? onPressed;
  
  const CustomFloatingButton({
    super.key, 
    required this.icon, 
    this.onPressed, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: const Color(0xffc7f7f7),
      onPressed: onPressed,
      label: Text(name),
      icon: Icon(icon),
    );
  }
}