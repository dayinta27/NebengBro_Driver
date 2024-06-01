import 'package:flutter/material.dart';
import 'package:flutter_application_1/payment_success.dart';

void main() {
  runApp(BankTransferApp());
}

class BankTransferApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BankTransferScreen(),
      routes: {
        '/success': (context) => PaymentSuccessPage(),
      },        
    );
  }
}

class BankTransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add back button functionality here
          },
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/bca.png', // Make sure to add the BCA logo in the assets
              height: 20,
            ),
            SizedBox(width: 5),
            Text('SALONPAS'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total penarikan',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Rp10.000',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Divider(height: 32),
            Row(
              children: [
                Image.asset(
                  'assets/bca.png', // Reuse the BCA logo
                  height: 20,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SALONPAS',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0123 4859 39',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(height: 32),
            Text(
              'Rincian Transfer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Yang mau ditransfer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Rp10.000',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Divider(),
            Text(
              'Total',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rp10.000',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add confirmation button functionality here
                Navigator.pushNamed(context, '/success');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text(
                'Konfirmasi',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
