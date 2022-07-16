import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewWatchlistItem extends StatefulWidget {

  String movieName;
  String type;
  double stars;
  int yearOfBuilt;
  String certificateCode;
  int countOfMinutes;
  String backgroundImageUrl;
  MainScreenHomeViewWatchlistItem({
    Key? key,
    required this.movieName,
    required this.type,
    required this.stars,
    required this.yearOfBuilt,
    required this.certificateCode,
    required this.countOfMinutes,
    required this.backgroundImageUrl,
  }) : super(key: key);


  @override
  State<MainScreenHomeViewWatchlistItem> createState() => _MainScreenHomeViewWatchlistItemState();
}

class _MainScreenHomeViewWatchlistItemState extends State<MainScreenHomeViewWatchlistItem> {
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
                        child: Text("${widget.yearOfBuilt} ${widget.certificateCode} ${(widget.countOfMinutes/60).floor()} sa ${widget.countOfMinutes%60} dk", style: constants.appTextFont(style: TextStyle(color:Colors.white60, fontSize: 12,)),)),
              
                      OutlinedButton(
                        
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric( horizontal:6),
                          side: BorderSide(
                            width: 1,
                            color: Colors.white38
                          )
                        ),
                        onPressed: (){},
                        child:  Text(
                          widget.type== "cinema" ? "Gosterim Saatleri" : "İzleme listesine alındı",
              
                          style: TextStyle(fontSize: widget.type == "movie" ? 11.4:13 ),
              
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
