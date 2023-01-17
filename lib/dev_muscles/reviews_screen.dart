import 'package:flutter/material.dart';
import 'package:jobspot/componants/comon_linear_progressbar.dart';
import 'package:jobspot/dev_muscles/write_a_review_screen.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  List<Map<String, dynamic>> data = [
    {
      "image": "assets/fitness/47.png",
      "data1": "Sharon Jem",
      "data2": "4.8",
      "data3": "2d ago",
      "data4": "Had such an amazing session with Maria. She \ninstantly picked up on the level of my fitness and \nadjusted the workout to suit me whilst also \npushing me to my limits.",
    },
    {
      "image": "assets/fitness/23.png",
      "data1": "Amy Gary",
      "data2": "4.2",
      "data3": "3d ago",
      "data4": "Maria has been amazing! 💪 Joining his coaching \nhas been transformational for me and she \nmakes it so much fun to workout with her I ve \nhad several personal training experiences and \nthis one is by far the best. Maria may very well \nbe the best personal trainer in this app 😉",
    },
    {"image": "assets/fitness/24.png", "data1": "Phillip Amauro Lubin", "data2": "3.6", "data3": "5d ago", "data4": "I am not very satisfied with Maria. But app \ndesign is awesome. Should i be a designer 🤔"},
    {
      "image": "assets/fitness/25.png",
      "data1": "Gretchen Schleifer",
      "data2": "4.7",
      "data3": "1w ago",
      "data4": "Maria is the best trainer in app. The knowledge \nand experience that he has in fitness and \nnutrition is mind blowing. She is there to push \nyou when you need to be pushed, motivates you \nwhen you are ready to give up and provides you \nwith tools for you to start living/eating a \nhealthier lifestyle."
    },
  ];
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(width),
                    ),
                    child: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: width / 5),
                  Text(
                    "Reviews",
                    style: TextStyle(
                      fontSize: text * 20,
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.04,
                margin: EdgeInsets.symmetric(vertical: height * 0.04),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(width),
                ),
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: TabBar(
                    splashBorderRadius: BorderRadius.all(
                      Radius.circular(width),
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    mouseCursor: MouseCursor.defer,
                    indicator: BoxDecoration(
                      color: const Color(0xFFD0FD3E),
                      borderRadius: BorderRadius.circular(width),
                    ),
                    tabs: const [
                      Text(
                        "Recent",
                      ),
                      Text("Critical"),
                      Text("Favourable"),
                    ],
                    onTap: (index) {},
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 30),
                  const Text(
                    "4.6",
                    style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: width * 0.08),
                  Expanded(
                    child: Container(
                      height: height / 9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const ComonLinearProgressbar(chirag: 0.6, data: "5"),
                          const SizedBox(height: 1),
                          const ComonLinearProgressbar(chirag: 0.8, data: "5"),
                          const SizedBox(height: 1),
                          const ComonLinearProgressbar(chirag: 0.4, data: "5"),
                          const SizedBox(height: 1),
                          const ComonLinearProgressbar(chirag: 0.2, data: "5"),
                          const SizedBox(height: 1),
                          const ComonLinearProgressbar(chirag: 0.1, data: "5"),
                          const SizedBox(height: 1),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: height * 0.01),
                            child: Text(
                              "174 Ratings",
                              style: TextStyle(color: Colors.white, fontSize: text * 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    ListView.builder(
                      itemBuilder: (context, index) => Card(
                        color: const Color(0xFF3A3A3C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(width * 0.04),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: height * 0.02),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(data[index]["image"]),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0, right: 10),
                                    child: Text(
                                      data[index]["data1"],
                                      style: TextStyle(color: Colors.white, fontSize: text * 15, fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.015,
                                    width: width * 0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.yellowAccent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(width * 0.01),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        data[index]["data2"],
                                        style: TextStyle(fontSize: text * 10, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: index == 1
                                        ? EdgeInsets.only(left: width * 0.3)
                                        : index == 2
                                            ? EdgeInsets.only(left: width * 0.03)
                                            : index == 3
                                                ? EdgeInsets.only(left: width * 0.08)
                                                : EdgeInsets.only(left: width * 0.2),
                                    child: Text(
                                      data[index]["data3"],
                                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: text * 11, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.02),
                              Text(
                                data[index]["data4"],
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: text * 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      itemCount: data.length,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: height / 3),
                        height: height / 3.5,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xee0D0D0D),
                              Color(0x00000000),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: height * 0.03),
                            height: height / 17,
                            width: width * 0.6,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD0FD3E),
                              borderRadius: BorderRadius.circular(width),
                            ),
                            child: Center(
                              child: TextButton(
                                child: const Text("Write a Review", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const WriteReviewScreen(),
                                      ));
                                },
                              ),
                            ),
                          ),
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
    );
  }
}
