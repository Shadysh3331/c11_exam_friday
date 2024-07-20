import 'package:c11_exam_friday/audio_book/audiobook.dart';
import 'package:c11_exam_friday/mental_health/mentalhealth.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MentalHealth.routName,
      routes: {
        MentalHealth.routName:(context)=>MentalHealth(),
        AudioBook.routName:(context)=>AudioBook(),

      },
    );
  }
}
