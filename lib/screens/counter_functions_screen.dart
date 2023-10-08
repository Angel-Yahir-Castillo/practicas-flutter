import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Fuctions'),
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
            icon: Icons.plus_one,
            name: 'sumar',
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
          ),

          const SizedBox( width: 15,),

          CustomFloatingButton(
            icon: Icons.exposure_minus_1,
            name: 'restar',
            onPressed: () {
              clickCounter--;
              setState(() {});
            },
          ),

          const SizedBox( width: 15,),

          CustomFloatingButton( 
            icon:Icons.refresh_outlined,
            name: 'reiniciar',
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
      backgroundColor: Colors.red,
      onPressed: onPressed,
      label: Text(name),
      icon: Icon(icon),
    );
  }
}