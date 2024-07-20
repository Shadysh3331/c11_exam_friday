import 'package:c11_exam_friday/audio_book/audiowidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioBook extends StatelessWidget {
  static const String routName="audio";
   AudioBook({super.key});
List<String>items=[
  "Art",
  "Business",
  "Comedy",
  "Drama"
];
List<String>backGrounds=[
  "assets/images/audio_bg.png",
  "assets/images/audio_bg2.png"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/Logo.png",width: 165,height: 40,),
            Icon(Icons.settings,color: Color(0xff4838D1),)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AudioWidget(label: "Catrgories"),
              SizedBox(height: 12,),
              SizedBox(
                height: 50,
                child: ListView.separated(itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: Text(items[index],style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16
                      ),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                  );
                },
                itemCount: items.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16,);
                  },
                scrollDirection: Axis.horizontal,),
              ),
              SizedBox(height: 22,),
              AudioWidget(label: "Recommended For You"),
              SizedBox(height: 22,),
              SizedBox(
                height: 300,
                child: ListView.separated(itemBuilder: (context, index) {
                  return Container(
                      width: 200,
                      child: Image.asset(backGrounds[index],fit: BoxFit.fill,));
                }, separatorBuilder: (context, index) {
                  return SizedBox(width: 8,);
                }, itemCount: backGrounds.length,
                  scrollDirection: Axis.horizontal,),
              ),

              SizedBox(height: 22,),
              AudioWidget(label: "Best Seller"),
              SizedBox(height: 14,),
              Row(
                children: [
                  Image.asset("assets/images/audio_bg3.png"),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text("Light Mage",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16
                          )
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Laurie Forest",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12
                          ),
                        )),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_books),label: "Library"),

      ]),
    );
  }
}
