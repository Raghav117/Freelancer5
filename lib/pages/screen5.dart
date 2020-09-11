import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(19, 155, 195, 1),
                Color.fromRGBO(14, 194, 165, 1)
              ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.withOpacity(0.8),
                    ),
                    child: Icon(Icons.person, size: 100, color: Colors.white),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Text(
                          "Anil Panda",
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "demo@demo.com",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.65),
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            tile("Bulk Order"),
            tile("My Wishlist"),
            tile("My Shared Catlog"),
            tile("Refer Now"),
            tile("Settings"),
            tile("About Us"),
            tile("Contact Us"),
            tile("Become a Supplier/Vendor"),
            tile("Legal"),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(19, 155, 195, 1),
                Color.fromRGBO(14, 194, 165, 1)
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "App Version",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Text(
                    "10.2.5.8.00",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget tile(name) {
    return Column(
      children: [
        ListTile(
          title: Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        Divider(
          thickness: 2,
        )
      ],
    );
  }
}
