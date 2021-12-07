import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIDesign extends StatelessWidget {
  const UIDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Weather Design",
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.search),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image(
              image: NetworkImage(
                  "https://raw.githubusercontent.com/itzpradip/flutter-weather-app-ui/main/assets/cloudy.jpeg"),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Chattogram",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "9:54 AM - Tuesday, 9 Dec 2021",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("24\u2103",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "9:54 AM - Tuesday, 9 Dec 2021",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.white30)
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0, right: 30.0),
                                  child: Column(
                                    children: [
                                      Text("Wind"),
                                      Text("10"),
                                      Text("km/h"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 50,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            height: 5,
                                            width: 10,
                                            color: Colors.greenAccent,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width:30),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0, right: 50.0),
                                  child: Column(
                                    children: [
                                      Text("Rain"),
                                      Text("10"),
                                      Text("%"),
                                       SizedBox(
                                        height: 5,
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 50,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            height: 5,
                                            width: 5,
                                            color: Colors.redAccent,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width:30),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, right:70),
                                  child: Column(
                                    children: [
                                      Text("Humidy"),
                                      Text("10"),
                                      Text("%"),
                                       SizedBox(
                                        height: 5,
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 50,
                                            color: Colors.white38,
                                          ),
                                          Container(
                                            height: 5,
                                            width: 3,
                                            color: Colors.redAccent,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
