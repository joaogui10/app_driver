import 'package:flutter/material.dart';
import 'package:flutter_application/loginscreen.dart';
import 'package:flutter_application/driverRegistration.dart';
import 'package:flutter_application/pessoalRegistration.dart';
import 'package:flutter_application/telaPrincipal.dart'; // Adiciona esta linha para importar a nova tela

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShippingForU',  
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,  
      ),
      home: LoginScreen(), 
      routes: {
        '/driverRegistration': (context) => DriverRegistrationForm(),
        '/pessoalRegistration': (context) => PessoalRegistrationForm(),
        '/telaPrincipal': (context) => TelaPrincipal(), // Adiciona a rota para a nova tela
      },
    );
  }
}
