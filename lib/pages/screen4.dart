import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Color.fromRGBO(253, 99, 132, 1),
                Color.fromRGBO(255, 179, 109, 1)
              ])),
        ),
        title: Text(
          "My Invitation History",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.home, size: 30, color: Colors.white),
              onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: MediaQuery.of(context).size.height - 200,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Details of ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 25)),
              Text("Anil Panda",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                      fontSize: 35)),
              Text("₹10,000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 25)),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Showing Results 2 of 200",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Card(
                elevation: 3,
                child: Container(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: width / 1.85,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(54, 54, 54, 0.7),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5))),
                          child: Center(
                            child: Text(
                              "Details",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 1,
                          color: Colors.white,
                        ),
                        Container(
                          height: 40,
                          width: width / 3,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(54, 54, 54, 0.7),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5))),
                          child: Center(
                            child: Text(
                              "Amount",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    details(width),
                    details(width),
                    details(width),
                    details(width),
                    details(width),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget details(width) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2))),
          height: 50,
          width: width / 1.85,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "ODID-123456748999463",
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Order Date : 12-SEP-2020",
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 1,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2))),
          height: 50,
          width: width / 3,
          child: Center(
            child: Text(
              "₹500",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
