import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {

  final String name;
  
  const HomeScreen({
    super.key, 
    required this.name, 
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          //nombre de usuario
          Bienvenida(name: widget.name),
             
          //espacio para poner las citas proximas
          const ProximasCitas(),

          //blog section
          const BlogSection()
        ],
     ),
   );
  }
}




class Bienvenida extends StatelessWidget {

  const Bienvenida({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Center(
        child: Column(
          children: [
            const Text('Bienvenid@', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
          ],
        ),
      ),
    );
  }
}

class ProximasCitas extends StatelessWidget {
  const ProximasCitas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFe20089), width: 1.0, style: BorderStyle.solid),
          bottom: BorderSide(color: Color(0xFFe20089), width: 1.0, style: BorderStyle.solid),
          right: BorderSide(color: Color(0xFFe20089), width: 0.1, style: BorderStyle.solid),
          left: BorderSide(color: Color(0xFFe20089), width: 0.1, style: BorderStyle.solid),
        ),
      ),
      child: const Text('No tienes citas programadas', style: TextStyle(fontSize: 18))
    );
  }
}

class BlogSection extends StatelessWidget {
  const BlogSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal:30),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Blogs ', style: TextStyle(fontSize: 20),),
              Text('ver mas...', style: TextStyle(fontSize: 20, color: Color(0xFFe20089)),),
            ],
          ),
          
          Container(
            //margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xFFe20089), width: 1.0, style: BorderStyle.solid),
              bottom: BorderSide(color: Color(0xFFe20089), width: 1.0, style: BorderStyle.solid),
              right: BorderSide(color: Color(0xFFe20089), width: 0.1, style: BorderStyle.solid),
              left: BorderSide(color: Color(0xFFe20089), width: 0.1, style: BorderStyle.solid),
            ),
          ),
            child: const Row(
              children: [
                Expanded(
                  child: Image(image: AssetImage('bursitis.PNG')),
                ),
                Expanded(
                  child: Image(image: AssetImage('sedentarismo.PNG')),
                ),
                Expanded(
                  child: Image(image: AssetImage('rodillas.PNG')),
                )
                
              ],
            ),
          )
        ],
      ),
    );
  }
}