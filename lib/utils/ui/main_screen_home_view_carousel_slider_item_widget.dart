
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/constants.dart' as constants;

class MainScreenHomeViewCarouselSliderItemWidget extends StatefulWidget {

  String backgroundImagePath;
  String bindingImagePath;
  String title;
  String subTitle;
  bool isIntoWatchList;


  MainScreenHomeViewCarouselSliderItemWidget({
    Key? key,
    required this.backgroundImagePath,
    required this.bindingImagePath,
    required this.title,
    required this.subTitle,
    required this.isIntoWatchList,
  }) : super(key: key);

  @override
  State<MainScreenHomeViewCarouselSliderItemWidget> createState() => _MainScreenHomeViewCarouselSliderItemWidgetState();
}

class _MainScreenHomeViewCarouselSliderItemWidgetState extends State<MainScreenHomeViewCarouselSliderItemWidget> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: constants.scaler(context, 100).width,
      height: 600,
      child: Stack(
        children: [
          // background photo
          SizedBox(
            width: constants.scaler(context, 100).width,
            child: Stack(
              children: [
                SizedBox(
                  width: constants.scaler(context, 100).width,
                  child: Image.network(widget.backgroundImagePath, fit: BoxFit.fitWidth, colorBlendMode: BlendMode.screen,color: Colors.black,)),
               
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: constants.scaler(context, 15).width),
                    child: Icon(Icons.play_circle_outlined, size: 80, color: Colors.white),
                  )
                  ),
                
              ],
            
            )),

            Stack(
              children: [
                
                // background color
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        color: constants.appMediumBlack,
                        height: 75,
                      ),
                  ],
                ),

                // post sphoto & title- subtitle
                Padding(
                padding: EdgeInsets.only(left: constants.scaler(context,4).width, bottom: constants.scaler(context, 4).width),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                      
                    // post photo
                    Stack(
                      children: [
                        SizedBox(
                        width: constants.scaler(context, 25).width,
                        child: Image.network(constants.moviePostImagePlaceHolder),
                      ),
                      
                      FaIcon(FontAwesomeIcons.solidBookmark, color: constants.appYellow, size: 48,)
                      ],
                    ),
                      
                    // title and subtitle
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(widget.title, style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 16)),),
                          Text(widget.subTitle, style: constants.appTextFont(style: TextStyle(color: Colors.white70, fontSize: 14)),),
                        ],
                      ),
                    ),
                      
                      
                      
                  ],
                      ),
              ),
              ]
            )




        ],
      ),
    );
  }
}


