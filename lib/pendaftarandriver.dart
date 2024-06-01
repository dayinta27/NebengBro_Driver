import 'package:flutter/material.dart';
import 'package:flutter_application_1/landing.dart';
import 'package:flutter_application_1/nomor.dart'; // Import LandingPage

class RegistrasiDriver extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrasiDriver> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController vehiclePlateController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Pendaftaran Driver"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16.0, top: 4.0),
                    child: Image.asset(
                      'assets/image/Logo.png', // Path to your logo
                      width: 50,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nebeng Bro",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 35),
                      Text(
                        "Personal Anda",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan nama lengkap Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan email Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Nomor Telepon',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan nomor telepon Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: birthDateController,
                decoration: InputDecoration(
                  labelText: 'Tempat, Tanggal Lahir',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan tempat, tanggal lahir Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan alamat Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: vehiclePlateController,
                decoration: InputDecoration(
                  labelText: 'No. Plat Kendaraan',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan nomor plat kendaraan Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: nationalIdController,
                decoration: InputDecoration(
                  labelText: 'No. KTP',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan nomor KTP Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                      );
                    }
                  },
                  child: Text("Kirim"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
