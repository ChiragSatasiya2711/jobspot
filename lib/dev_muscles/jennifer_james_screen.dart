import 'package:flutter/material.dart';
import 'package:jobspot/dev_muscles/reviews_screen.dart';

class JenniferJamesScreen extends StatefulWidget {
  const JenniferJamesScreen({Key? key}) : super(key: key);

  @override
  State<JenniferJamesScreen> createState() => _JenniferJamesScreenState();
}

class _JenniferJamesScreenState extends State<JenniferJamesScreen> {
  List data = ["assets/fitness/47.png", "assets/fitness/63.png", "assets/fitness/40.png", "assets/fitness/59.png", "assets/fitness/Profiles.png"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(
          children: [
            Image.asset(
              "assets/fitness/bk_jennifer_image.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 3.8),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(width / 10),
                  ),
                ),
                color: Colors.black,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: height * 0.04),
                        child: Column(
                          children: [
                            SizedBox(height: height * 0.04),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jennifer James",
                                      style: TextStyle(
                                        fontSize: text * 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Functional Strength",
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        height: 2,
                                        fontSize: text * 13,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/fitness/call_icon.png",
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                              margin: EdgeInsets.symmetric(vertical: height * 0.04),
                              width: width,
                              height: height / 10,
                              decoration: BoxDecoration(
                                color: const Color(0xFF3A3A3C),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(width * 0.06),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "6",
                                        style: TextStyle(
                                          fontSize: text * 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Experience",
                                        style: TextStyle(
                                          fontSize: text * 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    color: Colors.black12,
                                    thickness: 2,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "46",
                                        style: TextStyle(
                                          fontSize: text * 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Completed",
                                        style: TextStyle(
                                          fontSize: text * 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    color: Colors.black12,
                                    thickness: 2,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "25",
                                        style: TextStyle(
                                          fontSize: text * 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Active Clients",
                                        style: TextStyle(
                                          fontSize: text * 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: text * 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  height: height * 0.025,
                                  width: width * 0.09,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0FD3E),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(width * 0.015),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "4.6",
                                      style: TextStyle(
                                        fontSize: text * 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 6),
                                  width: height * 0.2,
                                  height: width * 0.1,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => Stack(
                                      children: [
                                        Image.asset(
                                          data[index],
                                        ),
                                      ],
                                    ),
                                    itemCount: data.length,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReviewsScreen(),
                                        ),
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        "Read all reviews",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: text * 13,
                                          color: Color(0xFFD0FD3E),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height / 5,
                        padding: EdgeInsets.only(left: width * 0.08, top: height * 0.02),
                        child: ListView.builder(
                          itemBuilder: (context, index) => Container(
                            height: height / 5.5,
                            width: width * 0.8,
                            margin: EdgeInsets.only(right: width * 0.04),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3A3A3C),
                              borderRadius: BorderRadius.all(
                                Radius.circular(width * 0.05),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(index == 0 ? "assets/fitness/47.png" : "assets/fitness/image_jennifer_3.png"),
                                    Padding(
                                      padding: EdgeInsets.only(left: width * 0.02, right: width * 0.03),
                                      child: Text(
                                        "Sharon Jem",
                                        style: TextStyle(color: Colors.white, fontSize: text * 15, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.015,
                                      width: width * 0.07,
                                      decoration: BoxDecoration(
                                        color: Colors.yellowAccent,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(width * 0.015),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "4.8",
                                          style: TextStyle(fontSize: text * 10, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: width * 0.2),
                                      child: Text(
                                        "2d ago",
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: text * 11, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.02),
                                Text(
                                  "Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness \nand adjusted the workout to suit me whilst also \npushing me to my limits.",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: text * 10),
                                ),
                              ],
                            ),
                          ),
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: height * 0.04),
                        height: height * 0.06,
                        width: width / 1.6,
                        decoration: BoxDecoration(
                          color: Color(0xFFD0FD3E),
                          borderRadius: BorderRadius.all(
                            Radius.circular(width * 1),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Book an Appointment",
                            style: TextStyle(fontSize: text * 17, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height / 25, left: width / 20),
              height: height * 0.05,
              width: width * 0.1,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(width),
              ),
              child: BackButton(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
