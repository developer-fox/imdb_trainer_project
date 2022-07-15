
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//* this file contains things for all of this project



// colors for app theme
Color appYellow = Color.fromARGB(255, 247, 192, 11);
Color appMediumBlack = Color.fromARGB(255, 33, 33, 33);
Color appGrey = Colors.grey;

// placeholder image url
String placeholderImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXy5KdSTNLEHx3hYPYjyMLevFrn-1FPpwYMw&usqp=CAU";

// movie post image placeholder
String moviePostImagePlaceHolder = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI6q3I9Bzf25oMoADvSVVn_YNEIxolcWRaYw&usqp=CAU";



// ui screen scale helper method
ScreenSize scaler(BuildContext context, double centage){

  double height  = MediaQuery.of(context).size.height * (centage/ 100) ;
  double width = MediaQuery.of(context).size.width * (centage/100);

  return ScreenSize(width: width, height: height);

}



// font family style method
TextStyle appTextFont({TextStyle style= const TextStyle(fontSize: 48)}) {
  return GoogleFonts.cairo  (textStyle:  style);
}



// ui scale helper class
class ScreenSize {

  double width;
  double height;
  ScreenSize({
    required this.width,
    required this.height,
  });

}


