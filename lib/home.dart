import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  final String username;

  const Beranda({super.key, required this.username});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  List<Map<String, dynamic>> taxiServices = [
    {
      'name': 'Evan',
      'rating': 4.9,
      'pickupLocation': 'Matahari Royal Plaza',
      'destination': 'Johar Plaza, Jl. Diponegoro No.66, Tembaan, Kepatihan, Kec. Kaliwates, Kabupaten Jember',
      'price': 20000,
    },
    {
      'name': 'Theresa',
      'rating': 4.5,
      'pickupLocation': 'Jember Roxy Square',
      'destination': 'JI. Hayam Wuruk No.50-58, Gerdu, Sempusari, Kec. Kaliwates, Kabupaten Jember',
      'price': 15000,
    },
    {
      'name': 'Mustofa',
      'rating': 4.8,
      'pickupLocation': 'Aston Jember Hotel & Conference Center',
      'destination': 'Jl. Sentot Prawirodirdjo No.88, Telengsah, Jember Kidul, Kec. Kaliwates, Kabupaten Jember',
      'price': 35000,
    },
    {
      'name': 'Kezia',
      'rating': 4.7,
      'pickupLocation': 'Lippo Plaza Jember',
      'destination': 'JI. Gajah Mada No.106, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember',
      'price': 15000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 252, 252, 252),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 76, 138, 211),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '19:02',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.signal_cellular_alt, color: Colors.white),
                              SizedBox(width: 5),
                              Icon(Icons.wifi, color: Colors.white),
                              SizedBox(width: 5),
                              Icon(Icons.battery_full, color: Colors.white),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                ),
                                child: Text('Online'),
                              ),
                              SizedBox(height: 10),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                  side: BorderSide(color: Colors.green),
                                ),
                                child: Text('Offline', style: TextStyle(color: Colors.green)),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/car.png',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: taxiServices.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                taxiServices[index]['name'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(width: 5),
                                  Text(
                                    taxiServices[index]['rating'].toString(),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Pickup: ${taxiServices[index]['pickupLocation']}',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Destination: ${taxiServices[index]['destination']}',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Price: Rp. ${taxiServices[index]['price']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet),
                label: "Dompet",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chat",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final IconData icon;
  final String label;

  FeatureButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(icon, size: 30, color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class LatLng {
  final double latitude;
  final double longitude;

  LatLng(this.latitude, this.longitude);
}
