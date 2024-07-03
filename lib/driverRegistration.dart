import 'package:flutter/material.dart';
import 'package:flutter_application/pessoalRegistration.dart';

class DriverRegistrationForm extends StatefulWidget {
  @override
  _DriverRegistrationFormState createState() => _DriverRegistrationFormState();
}

class _DriverRegistrationFormState extends State<DriverRegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  // Variáveis para armazenar os dados do motorista
  String nome = "";
  String telefone = "";
  String email = "";
  String cpf = "";
  String dataNascimento = "";
  String marcaVeiculo = "";
  String modeloVeiculo = "";
  String anoVeiculo = "";
  String quilometragemVeiculo = "";

  void _submitForm() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();

      print('Dados do motorista:');
      print('Nome: $nome');
      print('Telefone: $telefone');
      print('Email: $email');
      print('CPF/CNPJ: $cpf');
      print('Data de Nascimento: $dataNascimento');
      print('Marca do Veículo: $marcaVeiculo');
      print('Modelo do Veículo: $modeloVeiculo');
      print('Ano do Veículo: $anoVeiculo');
      print('Quilometragem do Veículo: $quilometragemVeiculo');

      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (_) => PessoalRegistrationForm(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Motorista'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nome';
                  }
                  return null;
                },
                onSaved: (value) {
                  nome = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telefone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu telefone';
                  }
                  return null;
                },
                onSaved: (value) {
                  telefone = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu email';
                  }
                  return null;
                },
                onSaved: (value) {
                  email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CPF'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu CPF';
                  }
                  return null;
                },
                onSaved: (value) {
                  cpf = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Data de Nascimento'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua data de nascimento';
                  }
                  return null;
                },
                onSaved: (value) {
                  dataNascimento = value!;
                },
              ),
              
              TextFormField(
                decoration: InputDecoration(labelText: 'Marca do Veículo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a marca do veículo';
                  }
                  return null;
                },
                onSaved: (value) {
                  marcaVeiculo = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Modelo do Veículo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o modelo do veículo';
                  }
                  return null;
                },
                onSaved: (value) {
                  modeloVeiculo = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ano do Veículo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o ano do veículo';
                  }
                  return null;
                },
                onSaved: (value) {
                  anoVeiculo = value!;
                },
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Quilometragem do Veículo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a quilometragem do veículo';
                  }
                  return null;
                },
                onSaved: (value) {
                  quilometragemVeiculo = value!;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Próxima Etapa'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
