// inicio_page.dart
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text('Bienvenido de nuevo!', style: TextStyle(fontSize: 20)),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón "Solicitar servicio técnico"
            },
            style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Cambia el color aquí
               elevation: MaterialStateProperty.all<double>(20.0), // Cambia el sombreado
                ),
            child: Column(
              children: [
                Image.asset('assets/servicio_tecnico.jpg', width: 400, height: 180),
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón "Mis productos"
            },
              style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Cambia el color aquí
               foregroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Cambia el color del texto
               elevation: MaterialStateProperty.all<double>(20.0), // Cambia el sombreado
                ),
            child: Column(
              children: [
                Image.asset('assets/balanzas.JPG', width: 400, height: 180),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
