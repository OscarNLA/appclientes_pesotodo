import 'package:flutter/material.dart';
import 'sidebar_menu.dart';
import 'inicio_page.dart'; 
import 'chatbot_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0; // Índice de la opción seleccionada

  // Define las rutas para las páginas correspondientes
final List<Widget> _pages = [
  InicioPage(), // Utiliza la página de inicio desde inicio_page.dart
  ChatbotPage(),
  AlertasPage(),
  EnProcesoPage(),
];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesotodo App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pesotodo App'),
        ),
        drawer: SidebarMenu(), // Agrega el menú lateral aquí
        body: _pages[_selectedIndex], // Muestra la página seleccionada
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chatbot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.warning),
              label: 'Alertas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hourglass_empty),
              label: 'En Proceso',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            // Cambia la página al tocar un elemento en la barra de navegación
            setState(() {
              _selectedIndex = index;
            });
          },
           selectedItemColor: Colors.black, // Color de los iconos seleccionados
          unselectedItemColor: Colors.black, // Color de los iconos no seleccionados
        ),
      ),
    );
  }
}

// Define las páginas correspondientes
/*class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Inicio'),
    );
  }
}

class ChatbotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Chatbot'),
    );
  }
}*/

class AlertasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Alertas'),
    );
  }
}

class EnProcesoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de En Proceso'),
    );
  }
}


