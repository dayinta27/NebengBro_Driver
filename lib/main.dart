import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/pendaftarandriver.dart';

void main() {
  runApp(const NebengBro());
}

class NebengBro extends StatelessWidget {
  const NebengBro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: RegistrasiDriver(),
    );
  }
}
// class InputNomorHP extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: InputNomorHP(),
//     );
//   }
// }

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginScreen(),
//     );
//   }
// }
