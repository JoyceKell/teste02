import 'package:flutter/material.dart';

import 'color_detail_page.dart';
import 'color_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Future<bool> _showConfirmationDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Tem certeza que deseja sair?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: Text('Sair'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _showConfirmationDialog(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Minha aplicação'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorButton(
                color: Colors.blue,
                text: 'Azul',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorDetailPage(
                        colorName: 'Azul',
                        color: Colors.blue,
                      ),
                    ),
                  );
                },
              ),
              ColorButton(
                color: Colors.red,
                text: 'Vermelho',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorDetailPage(
                        colorName: 'Vermelho',
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
              ColorButton(
                color: Colors.green,
                text: 'Verde',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorDetailPage(
                        colorName: 'Verde',
                        color: Colors.green,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
