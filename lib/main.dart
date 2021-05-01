import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_exploration/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        // canvasColor: Colors.transparent,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String id = "1";

  @override
  void setState(id) {
    super.setState(id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: RefreshIndicator(
          onRefresh: () async => Future.delayed(Duration(seconds: 2)),
          child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Profile Picture",
                        style: GoogleFonts.poppins(
                          textStyle: titleTextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        "assets/item-$id.png",
                        width: 140,
                        height: 140,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Maulana Nurkarim",
                        style: GoogleFonts.poppins(
                          textStyle: mediumtitleTextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Product Designer",
                        style:
                            GoogleFonts.poppins(textStyle: subtitleTextStyle),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Image.asset(
                              "assets/item-1.png",
                              height: 80,
                              width: 80,
                            ),
                            onTap: () {
                              setState(() {
                                id = "1";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Image.asset(
                              "assets/item-2.png",
                              height: 80,
                              width: 80,
                            ),
                            onTap: () {
                              setState(() {
                                id = "2";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Image.asset(
                              "assets/item-3.png",
                              height: 80,
                              width: 80,
                            ),
                            onTap: () {
                              setState(() {
                                id = "3";
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Image.asset(
                              "assets/item-4.png",
                              height: 80,
                              width: 80,
                            ),
                            onTap: () {
                              setState(() {
                                id = "4";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Image.asset(
                              "assets/item-5.png",
                              height: 80,
                              width: 80,
                            ),
                            onTap: () {
                              setState(() {
                                id = "5";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Image.asset(
                              "assets/item-6.png",
                              height: 80,
                              width: 80,
                            ),
                            onTap: () {
                              setState(() {
                                id = "5";
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        width: 224,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            actionButton(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Update Profile",
                            style: GoogleFonts.poppins(
                                    textStyle: mediumtitleTextStyle)
                                .copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

void actionButton(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: Colors.transparent,
        height: 290,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'Update Photo',
                style: GoogleFonts.poppins(textStyle: mediumtitleTextStyle)
                    .copyWith(fontSize: 22),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "You are only able to change",
                style: GoogleFonts.poppins(textStyle: subtitleTextStyle)
                    .copyWith(fontSize: 18),
              ),
              Text(
                "the picture profile once",
                style: GoogleFonts.poppins(textStyle: subtitleTextStyle)
                    .copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 55,
                width: 224,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: yellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(textStyle: mediumtitleTextStyle)
                        .copyWith(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
