import 'package:flutter/material.dart';

class PessoalRegistrationForm extends StatefulWidget {
  @override
  _PessoalRegistrationFormState createState() =>
      _PessoalRegistrationFormState();
}

class _PessoalRegistrationFormState extends State<PessoalRegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  // Variáveis para armazenar os dados do motorista
  String cep = "";
  String endereco = "";
  String numero = "";
  String complemento = "";
  String estado = "";
  String cidade = "";

  void _submitForm() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();

      print('Dados do motorista:');
      print('CEP $cep');
      print('ENDEREÇO $endereco');
      print('NÚMERO $numero');
      print('COMPLEMENTO $complemento');
      print('ESTADO $estado');
      print('CIDADE $cidade');

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Sucesso'),
            content: Text('Motorista cadastrado com sucesso!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro Pessoal do Motorista'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Cep'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu cep';
                  }
                  return null;
                },
                onSaved: (value) {
                  cep = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Endereço'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu endereço';
                  }
                  return null;
                },
                onSaved: (value) {
                  endereco = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Número'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu Número Residêncial';
                  }
                  return null;
                },
                onSaved: (value) {
                  numero = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Complemento'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o complemento';
                  }
                  return null;
                },
                onSaved: (value) {
                  complemento = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estado'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu estado';
                  }
                  return null;
                },
                onSaved: (value) {
                  estado = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cidade'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua cidade';
                  }
                  return null;
                },
                onSaved: (value) {
                  endereco = value!;
                },
              ),
              
              ElevatedButton(
                onPressed: () {
                  _submitForm();
                  Navigator.pushNamed(context,
                      '/pessoalRegistration'); // Navegar para a nova página de veículo
                },
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'Cadastre-se',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
