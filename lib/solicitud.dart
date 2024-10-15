import 'package:flutter/material.dart';

void main() => runApp(PesotodoApp());

class PesotodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PesotodoApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TechnicalServiceRequestScreen(),
    );
  }
}

class TechnicalServiceRequestScreen extends StatefulWidget {
  @override
  _TechnicalServiceRequestScreenState createState() => _TechnicalServiceRequestScreenState();
}

class _TechnicalServiceRequestScreenState extends State<TechnicalServiceRequestScreen> {
  final _descriptionController = TextEditingController();
  final _serialNumberController = TextEditingController();
  final _addressController = TextEditingController();
  String? _selectedServiceType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesotodo App'),
      ),
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Solicitar Servicio Técnico',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32.0),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Descripción',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
              maxLines: 3,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _serialNumberController,
              decoration: InputDecoration(
                labelText: 'Número de Serie del Producto',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: _selectedServiceType,
              decoration: InputDecoration(
                labelText: 'Seleccionar Tipo de Servicio',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              dropdownColor: Colors.blue[800],
              style: TextStyle(color: Colors.white),
              items: <String>['Mantenimiento', 'Reparación', 'Instalación']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedServiceType = newValue;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Dirección',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _submitRequest,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white24,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Enviar Solicitud',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitRequest() {
    final description = _descriptionController.text;
    final serialNumber = _serialNumberController.text;
    final serviceType = _selectedServiceType;
    final address = _addressController.text;

    // Aquí puedes agregar la lógica para enviar la solicitud de servicio técnico
    print('Descripción: $description');
    print('Número de Serie: $serialNumber');
    print('Tipo de Servicio: $serviceType');
    print('Dirección: $address');

    // Mostrar un diálogo de confirmación
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Solicitud Enviada'),
          content: Text('Tu solicitud de servicio técnico ha sido enviada correctamente.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                _clearForm();
              },
            ),
          ],
        );
      },
    );
  }

  void _clearForm() {
    _descriptionController.clear();
    _serialNumberController.clear();
    _addressController.clear();
    setState(() {
      _selectedServiceType = null;
    });
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _serialNumberController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}
