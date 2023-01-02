import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

interStyle(double fz, Color clr, [FontWeight? fw]) {
  return GoogleFonts.inter(
      textStyle: TextStyle(fontSize: fz, color: clr, fontWeight: fw));
}

poppinsStyle(double fz, Color clr, [FontWeight? fw]) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: fz, color: clr, fontWeight: fw));
}

poppinsStyle2(double fz,  [FontWeight? fw]) {
return GoogleFonts.poppins(
textStyle: TextStyle(fontSize: fz,  fontWeight: fw));
}
