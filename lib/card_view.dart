import 'package:flutter/material.dart';

class CardViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'Card View',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold, // ← Esto lo pone en negritas
            fontSize: 20,
            fontFamily:
                'Roboto', // Puedes cambiar a otra fuente si la tienes en assets
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete, color: Colors.black),
            onPressed: () {
              // Acción de eliminar tarjeta (lógica aún no implementada)
            },
          )
        ],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo e importe
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Mastercard-logo.png/600px-Mastercard-logo.png',
                      width: 75,
                    ),
                    Text(
                      '23000 USD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                // Nombre y número de tarjeta
                Text('MasterCard', style: TextStyle(color: Colors.white)),
                SizedBox(height: 8),
                Text('5512 •••• •••• 4748',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
