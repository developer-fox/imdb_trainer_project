
import "package:flutter/material.dart";

import "../../core/constants.dart" as constants;

class MainScreenHomeViewDiscoverVoteNowWidget extends StatefulWidget {

  List<String> photoUrls;
  String description;
  bool isPhotosCountEven;


  MainScreenHomeViewDiscoverVoteNowWidget({
    Key? key,
    required this.photoUrls,
    required this.description,
    required this.isPhotosCountEven,
  }) : super(key: key);

  @override
  State<MainScreenHomeViewDiscoverVoteNowWidget> createState() => _MainScreenHomeViewDiscoverVoteNowWidget();
}

class _MainScreenHomeViewDiscoverVoteNowWidget extends State<MainScreenHomeViewDiscoverVoteNowWidget> {
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
                child: Row(
                  
                  children: photoCount(widget.isPhotosCountEven) == 1 ? 
                  [Image.network(widget.photoUrls.first, fit: BoxFit.fitWidth)] 
                  : 
                  [SizedBox(width: constants.scaler(context, 36).width,  child: Image.network(widget.photoUrls.first, fit: BoxFit.fitWidth)),
                  VerticalDivider(width: 3, thickness: 3, color: Colors.white),
                   SizedBox(width: constants.scaler(context, 36).width,  child: Image.network(widget.photoUrls[1], fit: BoxFit.fitWidth))]
                ),
              ),
            ),


            // photos icon ant text
            Padding(
              padding:  EdgeInsets.only(top: constants.scaler(context,20).width, left: constants.scaler(context, 5).width),
              child: Container(
                    color: Color.fromARGB(61, 51, 51, 51),
                    width: constants.scaler(context,22).width,
                    child: Row(
                      children: [
                        Icon(Icons.format_list_bulleted_outlined, color: Colors.white, size: 18),
                        Text("Vote Now", style: constants.appTextFont(style: TextStyle(color:Colors.white, fontSize: 16)),),
                        
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

