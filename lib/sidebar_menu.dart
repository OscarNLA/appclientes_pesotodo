import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Tu Nombre"),
            accountEmail: Text("tu_correo@example.com"),
          ),
          ListTile(
            title: Text("Historial"),
            onTap: () {
              // Implementa la navegación a la pantalla de historial aquí.
            },
          ),
          ListTile(
            title: Text("Planes"),
            onTap: () {
              // Implementa la navegación a la pantalla de alertas aquí.
            },
          ),
          ListTile(
            title: Text("Recomendaciones"),
            onTap: () {
              // Implementa la navegación a la pantalla de recomendaciones aquí.
            },
          ),
          ListTile(
            title: Text("Manuales o Instrucciones"),
            onTap: () {
              // Implementa la navegación a la pantalla de manuales aquí.
            },
          ),
          ListTile(
            title: Text("Contáctenos"),
            onTap: () {
              // Implementa la navegación a la pantalla de contacto aquí.
            },
          ),
          Divider(),
          ListTile(
            title: Text("Salir"),
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sesión Cerrada Correctamente"),
          content: Text("Has salido de la aplicación."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                // Aquí puedes implementar la lógica para cerrar sesión, 
                // como navegar a la pantalla de inicio de sesión
              },
            ),
          ],
        );
      },
    );
  }
}