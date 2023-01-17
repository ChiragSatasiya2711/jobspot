import 'package:flutter/material.dart';

class UiAbout extends StatefulWidget {
  const UiAbout({Key? key}) : super(key: key);

  @override
  State<UiAbout> createState() => _UiAboutState();
}

class _UiAboutState extends State<UiAbout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(
          "assets/images/back_arrow.png",
          color: Colors.black,
          scale: 0.8,
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(width: 20),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height / 15),
                    height: height / 7,
                    width: width,
                    color: const Color(0xFFD9D9D9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "UI/UX Designer",
                          style: TextStyle(
                            color: const Color(0xFF0D0140),
                            fontWeight: FontWeight.bold,
                            fontSize: text * 16,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Google", style: TextStyle(fontSize: text * 16)),
                            Icon(Icons.circle, size: text * 9),
                            Text("California", style: TextStyle(fontSize: text * 16)),
                            Icon(Icons.circle, size: text * 9),
                            Text(
                              "1 day ago",
                              style: TextStyle(
                                fontSize: text * 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/images/google_logo.png"),
                ],
              ),
              SizedBox(
                height: height / 70,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                  height: height / 18,
                  width: width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFB2B2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xFFFC4646),
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(color: Color(0xFFFC4646), fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height / 18,
                  width: width / 2.3,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFB2B2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.ios_share,
                        color: Color(0xFFFC4646),
                      ),
                      Text(
                        "Visit website",
                        style: TextStyle(color: Color(0xFFFC4646), fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height / 13,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height / 18,
                            width: width / 4,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "About us",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          Text("Post"),
                          Text("Jobs"),
                          SizedBox(width: 2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height / 16,
                width: width / 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              Container(
                height: height / 16,
                width: width / 1.5,
                decoration: BoxDecoration(
                  color: Color(0xFF130160),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Apply Now",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
