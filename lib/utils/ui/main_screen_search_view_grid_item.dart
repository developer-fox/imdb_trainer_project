
import 'package:flutter/material.dart';

import '../../core/constants.dart' as constants;

class MainScreenSearchViewGridItem extends StatefulWidget {
  List<String> urlsOfPhotos;
  String title;
  Function elementFunction;
  bool isPhotosOnly;
  MainScreenSearchViewGridItem({
    Key? key,
    required this.urlsOfPhotos,
    required this.title,
    required this.elementFunction,
    required this.isPhotosOnly,
  }) : super(key: key);

  @override
  State<MainScreenSearchViewGridItem> createState() => _MainScreenSearchViewGridItemState();
}

class _MainScreenSearchViewGridItemState extends State<MainScreenSearchViewGridItem> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.elementFunction.call();
      },
      child: Container(
        width: constants.scaler(context,42).width,
        height: constants.scaler(context, 36).width,
        decoration: BoxDecoration(
          color: constants.appMediumBlack,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: constants.scaler(context, 36).width,
                child: widget.isPhotosOnly ? onlyPhoto(context, widget.urlsOfPhotos[0]) : photosStack(widget.urlsOfPhotos, context)
              ),
            ),
    
            Text(
              widget.title, style: constants.appTextFont(style: TextStyle(color:Colors.white, fontSize: 13.6))),
    
    
          ],
        ),
      ),
    );
  }
}


Widget photosStack(List<String> photosUrlsList, context){
  return  Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: constants.scaler(context, 36).width/2,
                        child:  Image.network(photosUrlsList[0], fit: BoxFit.contain),
                        ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: constants.scaler(context, 36).width/2,
                        child: Image.network(photosUrlsList[1], fit: BoxFit.contain),),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: constants.scaler(context, 36).width/2,
                        child: Image.network(photosUrlsList[2], fit: BoxFit.contain),),
                    ),
                  ],
                );
}

Widget onlyPhoto(BuildContext context, photoUrl){

  return SizedBox(
    height: constants.scaler(context, 26).width,
    child: (Image.network(photoUrl, fit: BoxFit.fitHeight)));


}



class MainScreenSearchViewGridIconItem extends StatefulWidget {
  Function elementFunction;
  IconData icon;
  Color color;
  String title;
  MainScreenSearchViewGridIconItem({
    Key? key,
    required this.elementFunction,
    required this.icon,
    required this.color,
    required this.title,
  }) : super(key: key);
  

  @override
  State<MainScreenSearchViewGridIconItem> createState() => _MainScreenSearchViewGridIconItemState();
}

class _MainScreenSearchViewGridIconItemState extends State<MainScreenSearchViewGridIconItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.elementFunction.call();
      },
      child: Container(
        width: constants.scaler(context,42).width,
        height: constants.scaler(context, 36).width,
        decoration: BoxDecoration(
          color: constants.appMediumBlack,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: constants.scaler(context, 36).width,
                child:Container(
                  height: constants.scaler(context,28).width,
                  color: widget.color,
                  child: Center(child: Icon(widget.icon, color: Colors.white, size:64)),
                ),
              ),
            ),
    
            Text(
              widget.title, style: constants.appTextFont(style: TextStyle(color:Colors.white, fontSize: 13.6))),
    
    
          ],
        ),
      ),
    );
  }
}

