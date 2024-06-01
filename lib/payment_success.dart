import 'package:flutter/material.dart';

void main() {
  runApp(PaymentSuccess());
}

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentSuccessPage(),
    );
  }
}

class PaymentSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // handle back button press
          },
        ),
        title: Row(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/8/8f/Logo_BCA.svg',
              height: 24,
            ),
            SizedBox(width: 8),
            Text(
              'BCA',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pembayaran Sukses',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.lightBlue[100],
              child: Icon(
                Icons.attach_money,
                color: Colors.blue,
                size: 50,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Kirim Uang Ke',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 5),
            Text(
              'SALONPAS',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Rp10.000',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // handle button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Tutup',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
