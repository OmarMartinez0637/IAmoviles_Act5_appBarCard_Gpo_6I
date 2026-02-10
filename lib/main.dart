import 'package:flutter/material.dart';

void main() => runApp(const AppHeladeria());

class AppHeladeria extends StatelessWidget {
  const AppHeladeria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heladeria',
      home: const Helado(),
    );
  }
} // fin clase AppHeladeria

class Helado extends StatelessWidget {
  const Helado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heladeria Omar Mtz.'),
        backgroundColor: Colors.lightBlueAccent,
        actions: const [
          Icon(Icons.bedroom_child),
          Icon(Icons.flight),
        ],
      ),
      drawer: const Drawer(),
      // El código de la tarjeta se coloca aquí, en el body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tarjeta con diseño guinda degradado
            Container(
              width: 350,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                // Mezcla de tonos guinda para el degradado oscuro
                gradient: const LinearGradient(
                  colors: [Color(0xFF630319), Color(0xFF30010B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Avatar con imagen de red
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white24, width: 2),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://raw.githubusercontent.com/OmarMartinez0637/IAmoviles_Act5_appBarCard/refs/heads/main/omar.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Textos en color blanco
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Omar Martínez',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Gerente de ventas',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} // fin clase Helado