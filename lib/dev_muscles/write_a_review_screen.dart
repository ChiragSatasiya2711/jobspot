import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:jobspot/dev_muscles/fitness_trainers_screen.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({Key? key}) : super(key: key);

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  bool Loading = false;

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
              SizedBox(height: height * 0.04),
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
                  SizedBox(width: width * 0.1),
                  Text(
                    "Write a Review",
                    style: TextStyle(
                      fontSize: text * 20,
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: width / 2.8),
                child: Center(
                  child: Text(
                    "4.6",
                    style: TextStyle(color: Colors.white, fontSize: text * 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GFProgressBar(
                percentage: 0.7,
                lineHeight: 28,
                alignment: MainAxisAlignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rating',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                backgroundColor: Colors.white24,
                progressBarColor: Color(0xFFD0FD3E),
              ),
              SizedBox(height: 20),
              Container(
                height: height / 4,
                width: width / 1.2,
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(
                    Radius.circular(width * 0.03),
                  ),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white, decoration: TextDecoration.none),
                  decoration: InputDecoration(
                      hintText: "Review (Optional)",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: text * 17,
                      ),
                      border: InputBorder.none),
                  maxLines: 10,
                ),
              ),
              SizedBox(height: height * 0.06),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FitnessTrainersScreen(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: height * 0.02),
                  height: height / 17,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD0FD3E),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Send",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: text * 16),
                    ),
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
