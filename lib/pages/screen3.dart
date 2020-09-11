import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: width / 2,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromRGBO(253, 99, 132, 1),
                          Color.fromRGBO(255, 179, 109, 1)
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 35,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context)),
                        Text(
                          "My Earning History",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              size: 35,
                              color: Colors.white,
                            ),
                            onPressed: null)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText:
                                          "Search for friends, number and more...",
                                      disabledBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none)),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(fontSize: 22),
                      ),
                      tile(),
                      tile(),
                      tile(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Yesterday",
                        style: TextStyle(fontSize: 22),
                      ),
                      tile(),
                      tile(),
                      tile(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Last Week",
                        style: TextStyle(fontSize: 22),
                      ),
                      tile(),
                      tile(),
                      tile(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget tile() {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text("Anil Panda"),
        subtitle: Text("2-SEP-2020, 05 : 20 PM "),
        trailing: Text(
          "₹10,000",
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
