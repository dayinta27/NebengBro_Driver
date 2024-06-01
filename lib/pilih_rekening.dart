import 'package:flutter/material.dart';

void main() {
  runApp(PilihRekeningBank());
}

class PilihRekeningBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PilihRekeningBankPage(),
    );
  }
}

class PilihRekeningBankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Rekening Bank'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: ListView(
        children: [
          BankTile(
            imagePath: 'assets/bca.png',
            bankName: 'BCA',
            description: 'Top up with BCA',
          ),
          BankTile(
            imagePath: 'assets/mandiri.jpeg',
            bankName: 'Mandiri',
            description: 'Top up with Mandiri',
          ),
          BankTile(
            imagePath: 'assets/bri.png',
            bankName: 'BRI',
            description: 'Top up with BRI',
          ),
          BankTile(
            imagePath: 'assets/bni.png',
            bankName: 'BNI',
            description: 'Top up with BNI',
          ),
          BankTile(
            imagePath: 'assets/bsi.png',
            bankName: 'BSI',
            description: 'Top up with BSI',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Dompet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class BankTile extends StatelessWidget {
  final String imagePath;
  final String bankName;
  final String description;

  BankTile({
    required this.imagePath,
    required this.bankName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 50.0,
          height: 50.0,
        ),
        title: Text(bankName, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
