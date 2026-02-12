import 'package:flutter/material.dart';

void main() => runApp(AppJugueteria());

class AppJugueteria extends StatelessWidget {
  const AppJugueteria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Juguetería Ivette', 
    home: Juguetes(),
    debugShowCheckedModeBanner: false,
    );
  }
} //fin appjuegueteria

class Juguetes extends StatelessWidget {
  const Juguetes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Juguetería Ivette",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 191, 131, 219),
        leading: const Icon(Icons.toys, color: Colors.white),
        actions: const [
          Icon(Icons.face, color: Colors.white),
          Icon(Icons.directions_car, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.park, color: Colors.white),
          ),
        ],
      ),

      body: ListView.builder(
  itemCount: 5, // Definimos los 5 elementos
  itemBuilder: (context, index) {
    // Lista de colores vibrantes para que se vea genial
    List<Color> colors = [
      Colors.deepPurpleAccent,
      Colors.orangeAccent,
      Colors.cyanAccent.shade700,
      Colors.pinkAccent,
      Colors.lightGreenAccent.shade700,
    ];

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: colors[index],
          child: Text('${index + 1}', style: const TextStyle(color: Colors.white)),
        ),
        title: Text('Elemento número ${index + 1}'),
        subtitle: const Text('Descripción básica del item'),
        trailing: Icon(Icons.arrow_forward_ios, color: colors[index], size: 18),
        onTap: () {
          // Acción al presionar
          print("Tocaste el elemento ${index + 1}");
        },
      ),
    );
  },
),
    );
  }
}//fin clase criminales