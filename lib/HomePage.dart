import 'package:flutter/material.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    QRcode(),
    Manufacture(),
    Distributor(),
    Iot()
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: AppBar(
        title: const Text("Pageone"),
        backgroundColor: Colors.cyan[700],
        centerTitle: true,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('welcome divik'),
            ),
            ListTile(
              title: const Text('profile'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('LogOut'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2),
            label: 'QR CODE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.precision_manufacturing),
            label: 'Manufacturer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fire_truck_sharp),
            label: 'distributor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'IOT',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.cyan[700],
      ),
    );
  }
}

class QRcode extends StatefulWidget {
  const QRcode({super.key});

  @override
  State<QRcode> createState() => _QRcodeState();
}

class _QRcodeState extends State<QRcode> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Text("qrpage")],
    );
  }
}

class Manufacture extends StatefulWidget {
  const Manufacture({super.key});

  @override
  State<Manufacture> createState() => _ManufactureState();
}

class _ManufactureState extends State<Manufacture> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Text("manufracture")],
    );
  }
}

class Distributor extends StatefulWidget {
  const Distributor({super.key});

  @override
  State<Distributor> createState() => _DistributorState();
}

class _DistributorState extends State<Distributor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Text('distributor')],
    );
  }
}

class Iot extends StatefulWidget {
  const Iot({super.key});

  @override
  State<Iot> createState() => _IotState();
}

class _IotState extends State<Iot> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Text('Iot')],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: const BorderSide(width: 5, color: Colors.black))),
              margin: const EdgeInsets.all(10.0),
              // color: Colors.grey[800],
              // width: double.maxFinite,
              width: 500,
              height: 160.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.ceter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://www.flaticon.com/free-icon/user_149071"),
                          backgroundColor: Colors.cyan,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Divik Dashora",
                          style: TextStyle(fontSize: 30, color: Colors.black)),
                      const Text(
                        "@dvikkdashora",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "product ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Text(
                        "supplier",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          width: 500,
          height: 500,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  side: const BorderSide(width: 5, color: Colors.black))),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("IOT devices:-",
                      style: TextStyle(fontSize: 50, color: Colors.black)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "sensor 1",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "sensor 3",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "sensor 2",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "sensor 4",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ]),
        )
      ],
    );
  }
}
