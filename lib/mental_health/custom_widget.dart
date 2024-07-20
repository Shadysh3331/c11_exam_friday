import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidget extends StatelessWidget {
  String label;
   CustomWidget({super.key,required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Exercise',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              'See more ',
              style: TextStyle(color: Colors.green),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.green,
              size: 16,
            ),
          ],
        ),
      ],
    );
  }
}
