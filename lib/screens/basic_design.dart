import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          //Imagen
          const Image(image: AssetImage('assets/fondo.jpeg')),

          //titulo
          const Titulo(),

          //button section
          const ButtonSection(),

          //description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text('jhhb hvhvhv hgvghvg ghvghvgv gvgh  vgh vhgvg gvgh gvgh vghv v ghvgvvgvgv  gvgvgvg ggvgvv gvgvgh'),
          )
        ],
      ),
    );
  }
}


class Titulo extends StatelessWidget {
  const Titulo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 50, vertical: 20),
      child:  Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Deschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switerland', style: TextStyle( color: Colors.black45),),
            ],
          ),
    
          Expanded(child: Container()),

          const Icon( Icons.star, color: Colors.red,),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 50, vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2.0,
          style: BorderStyle.solid
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
    
          Column(
            children: [
              Icon( Icons.call,color: Colors.blue),
              Text('CALL', style: TextStyle( color: Colors.blue ))
            ],
          ),
    
          Column(
            children: [
              Icon( Icons.route, color: Colors.blue),
              Text('ROUTE', style: TextStyle( color: Colors.blue ))
            ],
          ),
    
            Column(
            children: [
              Icon( Icons.share, color: Colors.blue),
              Text('SHARE', style: TextStyle( color: Colors.blue )),
            ],
          )
        ],
      ),
    );
  }
}