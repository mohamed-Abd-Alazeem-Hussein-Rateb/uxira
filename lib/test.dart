import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Gridview_Body.dart';
import 'package:flutter_application_1/widgets/Weather_Body.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.03),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Test',
                  style: TextStyle(fontSize: screenWidth * 0.05),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Weather_Body(),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: Row(
                  children: [
                    Text(
                      'Main features',
                      style: GoogleFonts.roboto(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              GridView.builder(
                padding: EdgeInsets.all(screenWidth * 0.02),
                itemCount: 6,
                shrinkWrap: true, // حل مشكلة الحجم داخل ScrollView
                physics: const NeverScrollableScrollPhysics(), // منع التمرير الداخلي
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: screenWidth * 0.5, // تحكم في حجم العناصر
                  crossAxisSpacing: screenWidth * 0.02,
                  mainAxisSpacing: screenHeight * 0.02,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return const Gridview_Body();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
