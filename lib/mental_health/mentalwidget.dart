import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MentalWidget extends StatelessWidget {
  String label;
  String image;
  Color color;
   MentalWidget({super.key,required this.label,required this.image,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(image),
            color: color,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(label, style: GoogleFonts.inter()),
        ],
      ),
    );
  }
}
