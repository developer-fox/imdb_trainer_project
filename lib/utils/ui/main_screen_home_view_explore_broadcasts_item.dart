import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewExploreBroadcastsItem extends StatefulWidget {

  String movieName;
  double stars;
  String backgroundImageUrl;
  Map<String, int> years;
  int episodes;
  MainScreenHomeViewExploreBroadcastsItem({
    Key? key,
    required this.movieName,
    required this.stars,
    required this.backgroundImageUrl,
    required this.years,
    required this.episodes,
  }) : super(key: key);


  @override
  State<MainScreenHomeViewExploreBroadcastsItem> createState() => _MainScreenHomeViewExploreBroadcastsItem();
}

class _MainScreenHomeViewExploreBroadcastsItem extends State<MainScreenHomeViewExploreBroadcastsItem> {
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
            color: Color.fromARGB(31, 88, 88, 88),
            child: Padding(
              padding:  EdgeInsets.all(8),
              child: Column(
                    children: [
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.solidStar, color: constants.appYellow, size:16),
                          Text("  ${widget.stars.toString()}", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 16))),
                        ],
                      ),
              
                      Text(softWrap: true ,widget.movieName, style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize:13,))),
              
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("${widget.years["start"]}-${widget.years["end"]==0 ? "0": widget.years["end"]}  ${widget.episodes}eps", style: constants.appTextFont(style: TextStyle(color:Colors.white60, fontSize: 12,)),)),
                      OutlinedButton(
                        
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric( horizontal: 30),
                          side: BorderSide(
                            width: 1,
                            color: Colors.white38
                          )
                        ),
                        onPressed: (){},
                        child:  Text(
                          "Şimdi izle",
                          style: TextStyle(fontSize: 13 ),
              
                          ),
                      ),

                    ],
                  ),
            ),
          )



        ]
      ),
    );
  }
}
