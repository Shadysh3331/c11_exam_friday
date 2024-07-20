import 'package:c11_exam_friday/mental_health/custom_widget.dart';
import 'package:c11_exam_friday/mental_health/mentalwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MentalHealth extends StatefulWidget {
  static const String routName = "mental";
  const MentalHealth({super.key});

  @override
  State<MentalHealth> createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
  List<String>mentalIcon=[
    "assets/images/love_image.png",
    "assets/images/cool_image.png",
    "assets/images/happy_image.png",
    "assets/images/sad_image.png",
  ];
  List<String> iconLabel=[
    "Love",
    "Cool",
    "Happy",
    "Sad"
  ];
  List <String> items = [
    "assets/images/mental_bg.png",
    "assets/images/mental_bg.png",
    "assets/images/mental_bg.png",

  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/images/logo_mental.png"),
            SizedBox(width: 6),
            Text("Moody",style: TextStyle(
              fontSize: 24
            ),),
            Spacer(),
            Badge(
                smallSize: 10,
                child: ImageIcon(AssetImage("assets/images/bell.png")))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  "Hello, Sara Rose",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "How are you feeling today?",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(fontSize: 16)
                  ),
                ),
              ),
              SizedBox(
                height: 105,
                width: 400,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          mentalIcon[index],
                          width: 80,
                        ),
                        SizedBox(height: 4,),
                        Text(iconLabel[index],style: GoogleFonts.inter(),)
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: mentalIcon.length,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomWidget(label: "Feature"),
              SizedBox(height: 12),
              CarouselSlider(
                items: items.map((image) => Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                )).toList(),
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    activeIndex = index;
                    setState(() {});
                  },
                  height: 200,
                  viewportFraction: 1,
                ),
              ),
              SizedBox(height: 20),
              AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: items.length,
              ),
              CustomWidget(label: "Exercise"),
              SizedBox(height: 12),
              GridView.count(
                childAspectRatio: 3,
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  MentalWidget(
                    label: "Relaxation",
                    image: "assets/images/relaxation.png",
                    color: Color(0xffB692F6),
                  ),
                  MentalWidget(
                    label: "Meditation",
                    image: "assets/images/meditation.png",
                    color: Color(0xffFAA7E0),
                  ),
                  MentalWidget(
                    label: "Breathing",
                    image: "assets/images/breathing.png",
                    color: Color(0xffFEB273),
                  ),
                  MentalWidget(
                    label: "Yoga",
                    image: "assets/images/yoga.png",
                    color: Color(0xff7CD4FD),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.date_range), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}


