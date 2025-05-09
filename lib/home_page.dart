import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Home page',
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
            icon: Icon(Icons.add, color: Color(0xbc9e9e9e)),
            onPressed: () => Navigator.pushNamed(context, '/add-card'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/card-view'),
              child: _buildCard(),
            ),
            SizedBox(height: 24),
            Text(
              'Last Transactions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 16),
            _buildTransaction(
                Icons.arrow_upward, Colors.red, 'Shopping', '-1000us'),
            _buildTransaction(
                Icons.arrow_downward, Colors.green, 'Salary', '+1000us'),
            _buildTransaction(
                Icons.arrow_downward, Colors.green, 'Receive', '+200us'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Mastercard-logo.png/600px-Mastercard-logo.png',
                  width: 75,
                ),
                Spacer(),
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
            Text(
              'MasterCard',
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 8),
            Text(
              '5512  ••••  ••••  4748',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransaction(
      IconData icon, Color color, String title, String amount) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: color),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
