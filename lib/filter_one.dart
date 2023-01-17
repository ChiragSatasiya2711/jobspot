import 'package:flutter/material.dart';

class FilterOne extends StatefulWidget {
  const FilterOne({Key? key}) : super(key: key);

  @override
  State<FilterOne> createState() => _FilterOneState();
}

class _FilterOneState extends State<FilterOne> {
  int _value = 1;
  List<Map<String, dynamic>> data4 = [
    {
      "id": "California, USA",
      "value": false,
    },
    {
      "id": "Texaz, USA",
      "value": false,
    },
    {
      "id": "New York, USA",
      "value": false,
    },
    {
      "id": "Florida, USA",
      "value": false,
    },
  ];
  List<Map<String, dynamic>> data6 = [
    {
      "id": "Design",
      "value": false,
    },
    {
      "id": "Finance",
      "value": false,
    },
    {
      "id": "Education",
      "value": false,
    },
    {
      "id": "Health",
      "value": false,
    },
    {
      "id": "Restuarant",
      "value": false,
    },
    {
      "id": "Programmer",
      "value": false,
    },
  ];
  RangeValues _current = const RangeValues(40, 80);

  List data = ["Recent", "Last week", "Last month", "Any time"];
  List data1 = ["On-site", "Hybrid", "Remote"];
  List data2 = ["Apprenticeship", "Part-time", "Full time", "Contarct", "Project-based"];
  List data3 = ["Junior", "Senior", "Leader", "Manager"];
  List data5 = ["No experience", "Less than a year", "1-3 years", "3-5 years", "5-10 years", "More than 10 years"];

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(width * 0.06),
                child: Image.asset(
                  "assets/images/back_arrow.png",
                  color: Colors.black,
                  scale: width * 0.002,
                ),
              ),
              SizedBox(height: height * 0.01),
              Center(
                  child: Text(
                "Filter",
                style: TextStyle(fontSize: text * 20, fontWeight: FontWeight.bold),
              )),
              SizedBox(height: height * 0.04),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => index == 0
                      ? ExpansionTile(
                          title: Text(
                            "Last update",
                            style: TextStyle(
                              color: const Color(0xFF150B3D),
                              fontSize: text * 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          iconColor: Colors.black,
                          children: [
                            for (int i = 0; i < 4; i++)
                              RadioListTile(
                                contentPadding: EdgeInsets.only(right: width * 0.2),
                                value: i,
                                activeColor: Colors.orange,
                                title: Text("${data[i]}"),
                                groupValue: _value,
                                onChanged: (int? value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                },
                              ),
                          ],
                        )
                      : index == 1
                          ? ExpansionTile(
                              title: Text(
                                "Type of workplace",
                                style: TextStyle(
                                  color: const Color(0xFF150B3D),
                                  fontSize: text * 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              iconColor: Colors.black,
                              children: [
                                for (int i = 0; i < 3; i++)
                                  RadioListTile(
                                    contentPadding: EdgeInsets.only(right: width * 0.2),
                                    value: i,
                                    activeColor: Colors.orange,
                                    title: Text("${data1[i]}"),
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    },
                                  ),
                              ],
                            )
                          : index == 2
                              ? ExpansionTile(
                                  title: Text(
                                    "Job type",
                                    style: TextStyle(
                                      color: const Color(0xFF150B3D),
                                      fontSize: text * 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  iconColor: Colors.black,
                                  children: [
                                    Container(
                                      height: height / 8,
                                      width: width,
                                      child: GridView.builder(
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: height * 0.02,
                                          mainAxisExtent: height * 0.045,
                                          crossAxisCount: 3,
                                          crossAxisSpacing: width * 0.02,
                                        ),
                                        itemBuilder: (context, index) => Container(
                                          margin: index == 0
                                              ? EdgeInsets.only(left: width * 0.03)
                                              : index == 4
                                                  ? const EdgeInsets.symmetric(horizontal: 0)
                                                  : EdgeInsets.symmetric(horizontal: width * 0.03),
                                          decoration: BoxDecoration(
                                            color: index == 2 ? Colors.orange : const Color(0xFFCBC9D4),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(width * 0.03),
                                            ),
                                          ),
                                          child: Center(
                                              child: Text(
                                            "${data2[index]}",
                                            style: TextStyle(
                                              color: index == 2 ? Colors.white : const Color(0xFF524B6B),
                                              fontSize: text * 10,
                                            ),
                                          )),
                                        ),
                                        itemCount: data2.length,
                                        scrollDirection: Axis.vertical,
                                        physics: const ClampingScrollPhysics(),
                                      ),
                                    )
                                  ],
                                )
                              : index == 3
                                  ? ExpansionTile(
                                      title: Text(
                                        "Position level",
                                        style: TextStyle(
                                          color: const Color(0xFF150B3D),
                                          fontSize: text * 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      iconColor: Colors.black,
                                      children: [
                                        Container(
                                          height: height / 8,
                                          width: width,
                                          child: GridView.builder(
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisSpacing: height * 0.02,
                                              mainAxisExtent: height * 0.045,
                                              crossAxisCount: 3,
                                              crossAxisSpacing: width * 0.04,
                                            ),
                                            padding: EdgeInsets.only(right: width * 0.09, left: width * 0.03),
                                            itemBuilder: (context, index) => Container(
                                              decoration: BoxDecoration(
                                                color: index == 1 ? Colors.orange : const Color(0xFFCBC9D4),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(width * 0.03),
                                                ),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                "${data3[index]}",
                                                style: TextStyle(color: index == 1 ? Colors.white : const Color(0xFF524B6B)),
                                              )),
                                            ),
                                            itemCount: data3.length,
                                            scrollDirection: Axis.vertical,
                                            physics: const ClampingScrollPhysics(),
                                          ),
                                        )
                                      ],
                                    )
                                  : index == 4
                                      ? ExpansionTile(
                                          title: Text(
                                            "City",
                                            style: TextStyle(
                                              color: const Color(0xFF150B3D),
                                              fontSize: text * 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          iconColor: Colors.black,
                                          children: [
                                            Container(
                                              height: height / 4,
                                              child: ListView.builder(
                                                physics: const NeverScrollableScrollPhysics(),
                                                itemCount: data4.length,
                                                itemBuilder: (context, index) {
                                                  return CheckboxListTile(
                                                    contentPadding: EdgeInsets.only(right: width * 0.1),
                                                    activeColor: Colors.orange,
                                                    checkColor: Colors.black,
                                                    controlAffinity: ListTileControlAffinity.leading,
                                                    title: Text(data4[index]["id"], style: const TextStyle(color: Colors.black54)),
                                                    value: data4[index]["value"],
                                                    onChanged: (value) {
                                                      setState(() {
                                                        data4[index]["value"] = value!;
                                                      });
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      : index == 5
                                          ? ExpansionTile(
                                              title: Text(
                                                "Salary",
                                                style: TextStyle(
                                                  color: const Color(0xFF150B3D),
                                                  fontSize: text * 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              iconColor: Colors.black,
                                              children: [
                                                RangeSlider(
                                                  values: _current,
                                                  divisions: 5,
                                                  activeColor: Colors.orange,
                                                  inactiveColor: Colors.black54,
                                                  max: 150,
                                                  labels: const RangeLabels("\$13K", "\n25K"),
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _current = value;
                                                    });
                                                  },
                                                )
                                              ],
                                            )
                                          : index == 6
                                              ? ExpansionTile(
                                                  title: Text(
                                                    "Experience",
                                                    style: TextStyle(
                                                      color: const Color(0xFF150B3D),
                                                      fontSize: text * 14,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  iconColor: Colors.black,
                                                  children: [
                                                    for (int i = 0; i < 6; i++)
                                                      RadioListTile(
                                                        contentPadding: EdgeInsets.only(right: width * 0.2),
                                                        value: i,
                                                        activeColor: Colors.orange,
                                                        title: Text(
                                                          "${data5[i]}",
                                                          style: const TextStyle(color: Colors.black54),
                                                        ),
                                                        groupValue: _value,
                                                        onChanged: (int? value) {
                                                          setState(() {
                                                            _value = value!;
                                                          });
                                                        },
                                                      ),
                                                  ],
                                                )
                                              : index == 7
                                                  ? ExpansionTile(
                                                      title: Text(
                                                        "Specialization",
                                                        style: TextStyle(
                                                          color: const Color(0xFF150B3D),
                                                          fontSize: text * 14,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      iconColor: Colors.black,
                                                      children: [
                                                        Container(
                                                          height: height / 2.6,
                                                          child: ListView.builder(
                                                            physics: const NeverScrollableScrollPhysics(),
                                                            itemCount: data6.length,
                                                            itemBuilder: (context, index) {
                                                              return CheckboxListTile(
                                                                contentPadding: EdgeInsets.only(right: width * 0.1),
                                                                activeColor: Colors.orange,
                                                                checkColor: Colors.black,
                                                                controlAffinity: ListTileControlAffinity.leading,
                                                                title: Text(data6[index]["id"], style: const TextStyle(color: Colors.black54)),
                                                                value: data6[index]["value"],
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    data6[index]["value"] = value!;
                                                                  });
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : Padding(
                                                      padding: EdgeInsets.symmetric(vertical: height * 0.03),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(width * 0.03),
                                                              ),
                                                            ),
                                                            height: height / 17,
                                                            width: width / 6,
                                                            child: Center(
                                                              child: Text(
                                                                "Reset",
                                                                style: TextStyle(color: Colors.orange, fontSize: text * 14),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: width * 0.04),
                                                          Container(
                                                            decoration: BoxDecoration(color: const Color(0xFF130160), borderRadius: BorderRadius.all(Radius.circular(width * 0.03))),
                                                            height: height / 17,
                                                            width: width / 1.7,
                                                            child: Center(
                                                              child: Text(
                                                                "Apply Now",
                                                                style: TextStyle(color: Colors.white, fontSize: text * 15, fontWeight: FontWeight.bold),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                  itemCount: 9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
