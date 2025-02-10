import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gridview_Body extends StatelessWidget {
  const Gridview_Body({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.2,
      width: screenWidth * 0.4,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 159, 210, 177),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: screenHeight * 0.02),
          Icon(Icons.wb_sunny, size: screenWidth * 0.15, color: Colors.white),
          SizedBox(height: screenHeight * 0.01),
          Text(
            'Weather',
            style: GoogleFonts.roboto(
              fontSize: screenWidth * 0.05,
              color: const Color(0xff4BA26A),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Flexible(
            child: Container(
              height: screenHeight * 0.05,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                color: const Color(0xff4BA26A),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Open',
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
