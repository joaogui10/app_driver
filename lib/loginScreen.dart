import 'package:flutter/material.dart';
import 'package:flutter_application/driverRegistration.dart';
import 'package:flutter_application/pessoalRegistration.dart';
import 'package:flutter_application/telaPrincipal.dart'; // Importe o novo arquivo

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Image.asset('assets/logo_ship.png', height: 250),
              ),
              // Campos de login e senha
              const TextField(
                decoration: InputDecoration(
                  labelText: 'login',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.fingerprint),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navegue para a tela de redefinição de senha quando o botão "Esqueceu sua senha?" for pressionado.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ForgotPasswordScreen()),
                  );
                },
                child: Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Simulação de login bem-sucedido
                    bool loginSuccessful = _performLogin();
                    if (loginSuccessful) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => TelaPrincipal()),
                      );
                    } else {
                      _showLoginErrorDialog(context);
                    }
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15), // Adiciona um espaço entre os botões
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DriverRegistrationForm()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Lista de ícones para login social
              const Text('Ou entre com'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/google.png'),
                    iconSize: 50,
                    onPressed: () {
                      // Ação de login com Google
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/apple.png'),
                    iconSize: 50,
                    onPressed: () {
                      // Ação de login com Apple
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _performLogin() {
    // Aqui você deve adicionar a lógica de autenticação
    // Retorne 'true' se o login for bem-sucedido e 'false' caso contrário
    // Exemplo:
    // if (username == 'admin' && password == 'admin') {
    //   return true;
    // } else {
    //   return false;
    // }
    return true; // Simulação de login bem-sucedido
  }

  void _showLoginErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Erro de Login'),
          content: Text('Nome de usuário ou senha incorretos.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

// Nova tela para redefinir a senha
class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redefinir Senha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/logo_ship.png', // Substitua 'assets/logo.png' pelo caminho do seu arquivo de imagem
                  width: 230, // Defina a largura desejada para o logotipo
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Endereço de E-mail',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para enviar um e-mail de redefinição de senha.
                // Por exemplo, você pode chamar uma função que envia um e-mail para o endereço fornecido.
                // Após o envio do e-mail, você pode exibir uma mensagem de sucesso para o usuário.
                _showDialog(context);
              },
              child: Text('Enviar E-mail de Redefinição'),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('E-mail Enviado'),
          content: Text('Um e-mail de redefinição de senha foi enviado para o endereço fornecido.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
