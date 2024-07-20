import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioWidget extends StatelessWidget {
  String label;
   AudioWidget({super.key,required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 16
          )
        )),
        Text("see more",style:GoogleFonts.poppins(
          textStyle:  TextStyle(
            color: Color(0xff4838D1),
          ),
        ))
      ],
    ) ;
  }
}
