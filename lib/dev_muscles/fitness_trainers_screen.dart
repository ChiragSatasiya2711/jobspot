import 'package:flutter/material.dart';
import 'package:jobspot/dev_muscles/jennifer_james_screen.dart';

class FitnessTrainersScreen extends StatefulWidget {
  const FitnessTrainersScreen({Key? key}) : super(key: key);

  @override
  State<FitnessTrainersScreen> createState() => _FitnessTrainersScreenState();
}

class _FitnessTrainersScreenState extends State<FitnessTrainersScreen> {
  List<Map<String, dynamic>> data = [
    {"image": "assets/fitness/fitness_image_one.png", "data1": "Richard Will ", "data2": "4.8", "data3": "High Intensity Training", "data4": "5 years experience"},
    {"image": "assets/fitness/finess_image_two.png", "data1": "Jennifer James", "data2": "4.6", "data3": "Functional Strength", "data4": "4 years experience"},
    {"image": "assets/fitness/fitness_image_three.png", "data1": "Brian Edward ", "data2": "4.5", "data3": "Strength Training", "data4": "6 years experience"},
    {"image": "assets/fitness/finess_image_four.png", "data1": "Emily Kevin ", "data2": "4.9", "data3": "High Intensity Training", "data4": "2 years experience"},
    {"image": "assets/fitness/finess_image_five.png", "data1": "Rebecca Smith", "data2": "4.8", "data3": "Functional Strength", "data4": "8 years experience"},
    {"image": "assets/fitness/finess_image_six.png", "data1": "Ronald Jason", "data2": "4.2", "data3": "High Intensity Training", "data4": "9 years experience"},
    {"image": "assets/fitness/finess_image_seven.png", "data1": "Cristofer Arcand", "data2": "4.8", "data3": "High Intensity Training", "data4": "7 years experience"},
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
          padding: EdgeInsets.symmetric(horizontal: height * 0.04),
          child: Column(
            children: [
              SizedBox(
                height: height / 25,
              ),
              Row(
                children: [
                  Image.asset("assets/fitness/back_icon.png"),
                  SizedBox(width: width * 0.05),
                  Text(
                    "Fitness Trainers",
                    style: TextStyle(
                      fontSize: text * 14,
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => index == 1
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => JenniferJamesScreen(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: height * 0.009),
                            decoration: BoxDecoration(
                              color: Color(0xFF2C2C2E),
                              borderRadius: BorderRadius.all(Radius.circular(width * 0.05)),
                            ),
                            height: height / 8.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(data[index]["image"]),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          data[index]["data1"],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: text * 15,
                                          ),
                                        ),
                                        SizedBox(width: width * 0.01),
                                        Container(
                                          height: height * 0.02,
                                          width: width * 0.08,
                                          decoration: BoxDecoration(
                                            color: Colors.yellowAccent,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(width * 0.015),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              data[index]["data2"],
                                              style: TextStyle(fontSize: text * 10, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: height * 0.002),
                                    Text(
                                      data[index]["data3"],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: text * 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.015),
                                    Text(
                                      data[index]["data4"],
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: text * 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios, color: Colors.white),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.symmetric(vertical: height * 0.009),
                          decoration: BoxDecoration(
                            color: Color(0xFF2C2C2E),
                            borderRadius: BorderRadius.all(Radius.circular(width * 0.05)),
                          ),
                          height: height / 8.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(data[index]["image"]),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        data[index]["data1"],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: text * 15,
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        height: height * 0.02,
                                        width: width * 0.08,
                                        decoration: BoxDecoration(
                                          color: Colors.yellowAccent,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(width * 0.015),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            data[index]["data2"],
                                            style: TextStyle(fontSize: text * 10, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.002),
                                  Text(
                                    data[index]["data3"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: text * 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.015),
                                  Text(
                                    data[index]["data4"],
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: text * 11,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, color: Colors.white),
                            ],
                          ),
                        ),
                  itemCount: data.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
