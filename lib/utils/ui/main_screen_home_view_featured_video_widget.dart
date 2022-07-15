
import "package:flutter/material.dart";

import "../../core/constants.dart" as constants;

class MainScreenHomeViewFeaturedVideoWidget extends StatefulWidget {

  String photoUrl;
  String description;
  int seconds;


  MainScreenHomeViewFeaturedVideoWidget({
    Key? key,
    required this.photoUrl,
    required this.description,
    required this.seconds,
  }) : super(key: key);

  @override
  State<MainScreenHomeViewFeaturedVideoWidget> createState() => _MainScreenHomeViewFeaturedVideoWidget();
}

class _MainScreenHomeViewFeaturedVideoWidget extends State<MainScreenHomeViewFeaturedVideoWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Stack(
          children: [

            // background images
              Container(
              height: constants.scaler(context, 32).width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(widget.photoUrl, fit: BoxFit.fitWidth) 
                 ,
              ),
            ),


            // photos icon ant text
            Padding(
              padding:  EdgeInsets.only(top: constants.scaler(context,22).width, left: constants.scaler(context, 5).width),
              child: Container(
                    width: constants.scaler(context,22).width,
                    child: Row(
                      children: [
                        Icon(Icons.play_circle_outline_outlined, color: Colors.white, size: 20),
                        Text("${(widget.seconds/60).floor()}:${(widget.seconds%60).toString()}", style: constants.appTextFont(style: TextStyle(color:Colors.white, fontSize: 18)),),
                        
                      ],
                    ),
                  ),
            ),

          ],
        ),

          // description
          Padding(
            padding:  EdgeInsets.only(left : 16),
            child: Text(widget.description, style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 12.4,))),
          )


      ],
    );

  }
}


// photo count helper
int photoCount(bool isEven){
  return isEven ? 2: 1; 
}

