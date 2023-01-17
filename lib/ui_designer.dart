import 'package:flutter/material.dart';

class UiDesignerScreen extends StatefulWidget {
  const UiDesignerScreen({Key? key}) : super(key: key);

  @override
  State<UiDesignerScreen> createState() => _UiDesignerScreenState();
}

class _UiDesignerScreenState extends State<UiDesignerScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height / 13),
                child: Stack(
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
                            Text("UI/UX Designer", style: TextStyle(color: const Color(0xFF0D0140), fontWeight: FontWeight.bold, fontSize: text * 16)),
                            SizedBox(height: height * 0.01),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                              child: Row(
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
                            ),
                          ],
                        )),
                    Image.asset("assets/images/google_logo.png"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [Text("Salary"), Text("Job Type"), Text("Postion")],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Job Description",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 14),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit \nvoluptatem accusantium doloremque laudantium, totam \nrem aperiam, eaque ipsa quae ab illo inventore veritatis et \nquasi architecto beatae vitae dicta sunt explicabo. Nemo \nenim ipsam voluptatem ...",
                      style: TextStyle(
                        color: const Color(0xFF524B6B),
                        fontSize: text * 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: height * 0.05,
                      width: width / 4,
                      decoration: BoxDecoration(
                        color: const Color(0x2E99ABC6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(height * 0.01),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: const Center(
                          child: Text(
                        "Read More",
                        style: TextStyle(color: Color(0xFF0D0140)),
                      )),
                    ),
                    Text(
                      "Requirements",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 13),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.01),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: text * 8),
                          SizedBox(width: width * 0.02),
                          Text(
                            "Sed ut perspiciatis unde omnis iste natus error sit.",
                            style: TextStyle(
                              fontSize: text * 11,
                              color: const Color(0xFF524B6B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, size: text * 8),
                        SizedBox(width: width * 0.02),
                        Text(
                          "Neque porro quisquam est, qui dolorem ipsum quia \ndolor sit amet, consectetur & adipisci velit.",
                          style: TextStyle(
                            fontSize: text * 10,
                            color: const Color(0xFF524B6B),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.01),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle, size: text * 8),
                          SizedBox(width: width * 0.02),
                          Text(
                            "Nemo enim ipsam voluptatem quia voluptas sit\n aspernatur aut odit aut fugit.",
                            style: TextStyle(
                              fontSize: text * 11,
                              color: const Color(0xFF524B6B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, size: text * 8),
                        SizedBox(width: width * 0.02),
                        Text(
                          "Ut enim ad minima veniam, quis nostrum \nexercitationem ullam corporis suscipit laboriosam, nisi \nut aliquid ex ea commodi consequatur",
                          style: TextStyle(
                            fontSize: text * 10,
                            color: const Color(0xFF524B6B),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Location",
                      style: TextStyle(
                        color: const Color(0xFF150B3D),
                        fontWeight: FontWeight.bold,
                        fontSize: text * 14,
                        height: height * 0.004,
                      ),
                    ),
                    const Text(
                      "Overlook Avenue, Belleville, NJ, USA",
                      style: TextStyle(
                        color: Color(0xFF524B6B),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.03),
                      child: Image.asset(
                        "assets/images/map.png",
                        height: height / 5,
                        width: width / 1.15,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Informations",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 14),
                    ),
                    Text(
                      "Position",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 10, height: 2, color: const Color(0xFF150B3D)),
                    ),
                    Text(
                      "Senior Designer",
                      style: TextStyle(fontSize: text * 10, height: 1.5),
                    ),
                    SizedBox(height: height * 0.01),
                    const Divider(
                      thickness: 1,
                      color: Colors.black26,
                    ),
                    Text(
                      "Qualification",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 10, height: 2, color: const Color(0xFF150B3D)),
                    ),
                    Text(
                      "Bachelor’s Degree",
                      style: TextStyle(fontSize: text * 10, height: 1.5),
                    ),
                    SizedBox(height: height * 0.01),
                    const Divider(
                      thickness: 1,
                      color: Colors.black26,
                    ),
                    Text(
                      "Experience",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 10, height: 2, color: const Color(0xFF150B3D)),
                    ),
                    Text(
                      "3 Years",
                      style: TextStyle(fontSize: text * 10, height: 1.5),
                    ),
                    SizedBox(height: height * 0.01),
                    const Divider(
                      thickness: 1,
                      color: Colors.black26,
                    ),
                    Text(
                      "Job Type",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 10, height: 2, color: const Color(0xFF150B3D)),
                    ),
                    Text(
                      "Full-Time",
                      style: TextStyle(fontSize: text * 10, height: 1.5),
                    ),
                    SizedBox(height: height * 0.01),
                    const Divider(
                      thickness: 1,
                      color: Colors.black26,
                    ),
                    Text(
                      "Specialization",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 10, height: 2, color: const Color(0xFF150B3D)),
                    ),
                    Text(
                      "Design",
                      style: TextStyle(fontSize: text * 10, height: 1.5),
                    ),
                    SizedBox(height: height * 0.01),
                    const Divider(
                      thickness: 1,
                      color: Colors.black26,
                    ),
                    SizedBox(height: height * 0.05),
                    Text(
                      "Facilities and Others",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 12, color: const Color(0xFF150B3D)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: text * 6),
                          SizedBox(width: width * 0.02),
                          Text(
                            "Medical",
                            style: TextStyle(
                              fontSize: text * 11,
                              color: const Color(0xFF524B6B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: text * 6),
                        SizedBox(width: width * 0.02),
                        Text(
                          "Dental",
                          style: TextStyle(
                            fontSize: text * 11,
                            color: const Color(0xFF524B6B),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: text * 6),
                          SizedBox(width: width * 0.02),
                          Text(
                            "Technical Cartification",
                            style: TextStyle(
                              fontSize: text * 11,
                              color: const Color(0xFF524B6B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: text * 6),
                        SizedBox(width: width * 0.02),
                        Text(
                          "Meal Allowance",
                          style: TextStyle(
                            fontSize: text * 11,
                            color: const Color(0xFF524B6B),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: text * 6),
                          SizedBox(width: width * 0.02),
                          Text(
                            "Transport Allowance",
                            style: TextStyle(
                              fontSize: text * 11,
                              color: const Color(0xFF524B6B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: text * 6),
                        SizedBox(width: width * 0.02),
                        Text(
                          "Regular Hours",
                          style: TextStyle(
                            fontSize: text * 11,
                            color: const Color(0xFF524B6B),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Row(
                        children: [
                          Icon(Icons.circle, size: text * 6),
                          SizedBox(width: width * 0.02),
                          Text(
                            "Mondays-Fridays",
                            style: TextStyle(
                              fontSize: text * 11,
                              color: const Color(0xFF524B6B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: height / 14,
                        width: width / 1.2,
                        margin: EdgeInsets.symmetric(vertical: height * 0.02),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0D0140),
                          borderRadius: BorderRadius.all(
                            Radius.circular(height * 0.01),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Apply Now",
                          style: TextStyle(
                            fontSize: text * 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
