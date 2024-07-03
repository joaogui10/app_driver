import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  final List<Map<String, String>> corridasAgendadas = [
    {'origem': 'Endereço A', 'destino': 'Endereço B', 'horario': '10:00'},
    {'origem': 'Endereço C', 'destino': 'Endereço D', 'horario': '12:00'},
    {'origem': 'Endereço E', 'destino': 'Endereço F', 'horario': '14:00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo à Tela Principal!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para solicitar corridas para o motorista
              },
              child: Text('Buscar Corrida'),
            ),
            SizedBox(height: 20),
            Text(
              'Corridas Agendadas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: corridasAgendadas.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Origem: ${corridasAgendadas[index]['origem']}',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Destino: ${corridasAgendadas[index]['destino']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Horário: ${corridasAgendadas[index]['horario']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Lógica para editar a corrida
                                },
                                child: Text('Editar'),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Lógica para excluir a corrida
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                ),
                                child: Text('Excluir'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}
