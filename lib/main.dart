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
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: RefreshIndicator(
        onRefresh: () async => Future.delayed(Duration(seconds: 2)),
        child:
            ListView(physics: const AlwaysScrollableScrollPhysics(), children: [
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
                  "assets/primary.png",
                  width: 140,
                  height: 140,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Anne Margaritha",
                  style: GoogleFonts.poppins(
                    textStyle: mediumtitleTextStyle,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "UX Designer",
                  style: GoogleFonts.poppins(textStyle: subtitleTextStyle),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/item-1.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/item-2.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/item-3.png",
                      height: 80,
                      width: 80,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/item-4.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/item-5.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/item.png",
                      height: 80,
                      width: 80,
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Update Profile",
                      style:
                          GoogleFonts.poppins(textStyle: mediumtitleTextStyle)
                              .copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
