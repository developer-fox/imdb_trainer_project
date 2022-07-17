import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewInYourHomeSoonSliderChildItem extends StatefulWidget {

  String movieName;
  String backgroundImageUrl;
  String subtitle;
  MainScreenHomeViewInYourHomeSoonSliderChildItem({
    Key? key,
    required this.movieName,
    required this.backgroundImageUrl,
    required this.subtitle,
  }) : super(key: key);


  @override
  State<MainScreenHomeViewInYourHomeSoonSliderChildItem> createState() => _MainScreenHomeViewWatchInYourHomeSoonSliderChildItem();
}

class _MainScreenHomeViewWatchInYourHomeSoonSliderChildItem extends State<MainScreenHomeViewInYourHomeSoonSliderChildItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [

          // background image and watchlist icon
          Stack(
            children: [
              SizedBox(
                width: constants.scaler(context, 36).width,
                height: constants.scaler(context, 48).width,
                child: Image.network(widget.backgroundImageUrl, fit: BoxFit.cover)),
              FaIcon(FontAwesomeIcons.solidBookmark, color: constants.appYellow, size: 36),
            ],
          ),

          // other details
          Container(
            width: constants.scaler(context,36).width,
            height: constants.scaler(context, 30).width,
            color: Color.fromARGB(31, 88, 88, 88),
            child: Padding(
              padding:  EdgeInsets.all(8),
              child: Column(
                    children: [

                      Text(softWrap: true ,widget.movieName, style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize:13,))),
              
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(widget.subtitle, style: constants.appTextFont(style: TextStyle(color:Colors.white60, fontSize: 12,)),)),

                        
                    ],
                  ),
            ),
          )



        ]
      ),
    );
  }
}
