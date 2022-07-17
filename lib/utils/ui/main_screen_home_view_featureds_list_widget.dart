
import "package:flutter/material.dart";

import "../../core/constants.dart" as constants;




class MainScreenHomeViewFeaturedsListWidget extends StatefulWidget {

  List<String> photoUrls;
  String description;

  MainScreenHomeViewFeaturedsListWidget({
    Key? key,
    required this.photoUrls,
    required this.description,
  }) : super(key: key);

  @override
  State<MainScreenHomeViewFeaturedsListWidget> createState() => _MainScreenHomeViewFeaturedsListWidgetState();
}

class _MainScreenHomeViewFeaturedsListWidgetState extends State<MainScreenHomeViewFeaturedsListWidget> {
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
                  children: [
                    Container(
                      width: constants.scaler(context,20).width,
                      child: Image.network(widget.photoUrls[0], fit: BoxFit.cover,)),
                    VerticalDivider(color: Colors.white,thickness: 3,width: 3, ),
                    Container(
                      width: constants.scaler(context,20).width,
                      child: Image.network(widget.photoUrls[0], fit: BoxFit.cover,)),
                    VerticalDivider(color: Colors.white,thickness: 3,width: 3, ),
                    Container(
                      width: constants.scaler(context,20).width,
                      child: Image.network(widget.photoUrls[0], fit: BoxFit.cover,)),


                  ],
                ),
              ),
            ),

            // list icon ant text
            Padding(
              padding:  EdgeInsets.only(top: constants.scaler(context,20).width, left: constants.scaler(context, 5).width),
              child: Container(
                    color: Color.fromARGB(61, 51, 51, 51),
                    width: constants.scaler(context,16).width,
                    child: Row(
                      children: [
                        Icon(Icons.format_list_bulleted_outlined, color: Colors.white, size: 18),
                        Text("List", style: constants.appTextFont(style: TextStyle(color:Colors.white, fontSize: 16)),),
                        
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




