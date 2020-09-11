import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              width: width,
              height: width + 40,
              // color: Colors.green,
              child: Stack(
                children: [
                  Container(
                    width: width,
                    height: width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                          Color.fromRGBO(253, 99, 132, 1),
                          Color.fromRGBO(255, 179, 109, 1)
                        ])),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // IconButton(
                              //     icon: Icon(
                              //       Icons.arrow_back,
                              //       color: Colors.white,
                              //       size: 30,
                              //     ),
                              //     onPressed: () => Navigator.pop(context)),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.white)),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "My Earnings",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                width: width - width / 4,
                                child: Text(
                                  "Invite your friends and Start Earning Money",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 27),
                                ),
                              ),
                              Container(
                                height: 30,
                              ),
                              Container(
                                width: width / 3,
                                child: Divider(
                                  thickness: 3,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: width / 4,
                    child: Column(
                      children: [
                        Container(
                          width: 175,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color.fromRGBO(253, 99, 132, 1),
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Center(
                              child: Text(
                            "KHWWCSY6JZ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          width: 175,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(253, 99, 132, 1),
                              ),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Center(
                              child: Text(
                            "Share your referral code",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Start sharing with",
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/10.jfif"))),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/11.jfif"))),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/12.jfif")))
                  ],
                )
              ],
            )),
            Container(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromRGBO(253, 99, 132, 1),
                            Color.fromRGBO(255, 179, 109, 1)
                          ])),
                  child: Center(
                    child: Text(
                      "Back",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 19),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
