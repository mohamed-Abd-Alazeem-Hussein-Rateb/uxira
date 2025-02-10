import 'package:flutter/material.dart';

class Weather_Body extends StatelessWidget {
  const Weather_Body({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.05,
          right: screenWidth * 0.05,
          
        ),
        child: Stack(
          children: [
            Container(
              height: screenHeight * 0.25,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('images/Rectangle 6.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "29°",
                        style: TextStyle(
                            fontSize: 54.6, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10), // بدل ConstrainedBox الصغيرة
                      Text(
                        "H:32°   L:27°",
                        style: TextStyle(fontSize: 15.9, color: Colors.white60),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cairo",
                              style: TextStyle(
                                  fontSize: 22.8, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Cloudy",
                              style: TextStyle(
                                  fontSize: 22.8, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Positioned(
              right: screenWidth * 0.05,
              top: screenHeight * 0.01,
              left: screenWidth * 0.5,
              child: Image.asset(
                'images/Sun cloud angled rain.png',
                height: screenHeight * 0.15,
                width: screenWidth * 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
