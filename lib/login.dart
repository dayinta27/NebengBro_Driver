import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordHide = false;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordHide = true;
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/Logo.png',
                  height: 30,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 0,
                ),
                Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                children: <Widget>[
                  buildTextField(
                      context, 'Nama', 'Nama Lengkap', usernameController),
                  buildTextField(context, 'Email', 'Email', usernameController),
                  buildTextField(
                      context, 'Nomor Hp', 'Nomor Telepon', usernameController),
                  buildTextField(context, 'Tempat, Tanggal Lahir',
                      'Tempat, Tanggal Lahir', usernameController),
                  buildTextField(
                      context, 'Alamat', 'Alamat', usernameController),
                  buildTextField(context, 'No. Plat Kendaraan', 'No. Plat',
                      usernameController),
                  buildTextField(
                      context, 'No. KTP', 'No. KTP', usernameController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 500),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      Navbar(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                final tween = Tween<Offset>(
                                  begin: Offset(1.0, 0.0),
                                  end: Offset(0.0, 0.0),
                                );
                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Kirim',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context, String label, String hint,
      TextEditingController controller) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    label,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 0.5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: hint,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             'Nama',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: TextField(
//                               controller: usernameController,
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(width: 0.5),
//                                       borderRadius: BorderRadius.circular(25)),
//                                   hintText: 'Nama Lengkap'),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ),
//             Container(
//               margin: const EdgeInsets.only(top: 15, bottom: 10),
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             'Email',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: TextField(
//                               controller: usernameController,
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(width: 0.5),
//                                       borderRadius: BorderRadius.circular(25)),
//                                   hintText: 'Email'),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ),
//             Container(
//               margin: const EdgeInsets.only(top: 15, bottom: 10),
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             'Nomor Hp',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: TextField(
//                               controller: usernameController,
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(width: 0.5),
//                                       borderRadius: BorderRadius.circular(25)),
//                                   hintText: 'Nomor Telepon'),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ), 
//             Container(
//               margin: const EdgeInsets.only(top: 15, bottom: 10),
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             'Tempat, Tanggal Lahir',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: TextField(
//                               controller: usernameController,
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(width: 0.5),
//                                       borderRadius: BorderRadius.circular(25)),
//                                   hintText: 'Tempat. Tanggal Lahir'),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ), 
//             Container(
//               margin: const EdgeInsets.only(top: 15, bottom: 10),
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             'Alamat',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: TextField(
//                               controller: usernameController,
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(width: 0.5),
//                                       borderRadius: BorderRadius.circular(25)),
//                                   hintText: 'Alamat'),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ),  
//             Container(
//               margin: const EdgeInsets.only(top: 15, bottom: 10),
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             'No. Plat Kendaraan',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: TextField(
//                               controller: usernameController,
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(width: 0.5),
//                                       borderRadius: BorderRadius.circular(25)),
//                                   hintText: 'No. Plat'),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ), 
//             Container(
//               margin: const EdgeInsets.only(top: 15, bottom: 10),
//               width: MediaQuery.of(context).size.width * 0.95,
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             'No. KTP',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           Container(
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: TextField(
//                               controller: usernameController,
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.white,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(width: 0.5),
//                                       borderRadius: BorderRadius.circular(25)),
//                                   hintText: 'No. KTP'),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.02,
//                   ),                                     
//                           Material(
//                             borderRadius: BorderRadius.circular(30),
//                             color: Colors.blue,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width * 0.95,
//                               height: MediaQuery.of(context).size.height * 0.06,
//                               child: InkWell(
//                                 onTap: () {
//                                    Navigator.pushReplacement(context,
//                                         PageRouteBuilder(
//                                           transitionDuration: Duration(milliseconds: 500),
//                                           pageBuilder: (context, animation, secondaryAnimation) => Navbar(),
//                                           transitionsBuilder: (context, animation, secondaryAnimation, child) { 
//                                             final tween = Tween<Offset>(
//                                               begin: Offset(1.0, 0.0),
//                                               end: Offset(0.0, 0.0),
//                                             );
//                                             return SlideTransition(
//                                               position: animation.drive(tween),
//                                               child: child,
//                                             );
//                                           },
//                                         ),
//                                       );
//                                 },
//                                 child: Center(
//                                   child: Text(
//                                     'Login',
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.w500,
//                                         color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
                          
//                           SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.02,
//                           ),
//                         ],
//                       ),
//                     ),
//                   // ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );          
//   } 
// }