import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<String> images = [
    "assets/1.jfif",
    "assets/2.jfif",
    "assets/3.jfif",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.png",
    "assets/3.jfif",
    "assets/2.jfif",
    "assets/3.jfif",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.png",
    "assets/3.jfif",
    "assets/4.jpg",
    "assets/5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Brands Shop"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 2,
                child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 0.5)),
                    height: 40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                            decoration: InputDecoration(
                                hoverColor: Colors.black,
                                fillColor: Colors.black,
                                focusColor: Colors.black,
                                hintText:
                                    "Search for brands, products categories and more...",
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none)),
                      ),
                    )),
              ),
            ),

            Container(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "BRANDS",
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
            ),
            // Container(
            //     height: MediaQuery.of(context).size.width / 4 + 20,
            //     width: MediaQuery.of(context).size.width / 3,
            //     decoration: BoxDecoration(
            //         color: Colors.green,
            //         borderRadius: BorderRadius.circular(20)),
            //     child: ClipRRect(
            //         borderRadius: BorderRadius.circular(20),
            //         child: Image.asset(
            //           images[0],
            //           fit: BoxFit.cover,
            //         ))),
            Flexible(
                child: SingleChildScrollView(
                    child: Column(
              children: images.map((e) {
                int index = images.indexOf(e);
                if (index % 3 == 0)
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.width / 3,
                            width: MediaQuery.of(context).size.width / 3.25,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  e,
                                  fit: BoxFit.cover,
                                ))),
                        index + 1 < images.length
                            ? Container(
                                height: MediaQuery.of(context).size.width / 3,
                                width: MediaQuery.of(context).size.width / 3.25,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      images[index + 1],
                                      fit: BoxFit.cover,
                                    )))
                            : SizedBox(),
                        index + 2 < images.length
                            ? Container(
                                height: MediaQuery.of(context).size.width / 3,
                                width: MediaQuery.of(context).size.width / 3.25,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      images[index + 2],
                                      fit: BoxFit.cover,
                                    )))
                            : SizedBox(),
                      ],
                    ),
                  );
                else
                  return Container();
              }).toList(),
            ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "View all products",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
