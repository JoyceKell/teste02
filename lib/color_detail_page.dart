import 'package:flutter/material.dart';

class ColorDetailPage extends StatelessWidget {
  final String colorName;
  final Color color;

  const ColorDetailPage({
    Key? key,
    required this.colorName,
    required this.color,
  }) : super(key: key);

  Future<bool> _showConfirmationDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Tem certeza que deseja voltar para a página inicial?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: Text('Voltar'),
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
      onWillPop: () async {
        bool shouldNavigate = await _showConfirmationDialog(context);
        return shouldNavigate;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(colorName),
        ),
        body: Container(
          color: color,
          child: Center(
            child: Image.network(
              'https://picsum.photos/300',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
