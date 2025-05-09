import 'package:flutter/material.dart';

class AddCardPage extends StatelessWidget {
  final TextEditingController cardNameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController balanceController = TextEditingController();
  final TextEditingController currencyController = TextEditingController();

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
          'Add Card',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold, // ← Esto lo pone en negritas
            fontSize: 20,
            fontFamily:
                'Roboto', // Puedes cambiar a otra fuente si la tienes en assets
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTextField(controller: cardNameController, hint: 'Card name'),
            SizedBox(height: 12),
            _buildTextField(
                controller: cardNumberController, hint: 'Card Number'),
            SizedBox(height: 12),
            _buildTextField(controller: bankNameController, hint: 'Bank Name'),
            SizedBox(height: 12),
            _buildTextField(
                controller: balanceController, hint: 'Available Balance'),
            SizedBox(height: 12),
            _buildTextField(controller: currencyController, hint: 'Currency'),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/card-view');
                },
                child: Text('Add',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller, required String hint}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
