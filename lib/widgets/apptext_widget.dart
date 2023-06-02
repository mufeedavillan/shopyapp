import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String?data;
  final double? size;
  final Color? color;
  final FontWeight? fw;
  final lines;


  const AppText(this.data,{super.key,this.color=Colors.purple,this.fw,this.size=16, this.lines=2});

  @override
  Widget build(BuildContext context) {
    return Text(

     data.toString(),
      maxLines: lines,
      style: GoogleFonts.poppins(
          fontSize:size,
          fontWeight: fw,
        color: color
      ),
    );
  }
}
