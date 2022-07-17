import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewBornTodayWidget extends StatefulWidget {

  String name;
  String photoUrl;
  int age;
  MainScreenHomeViewBornTodayWidget({
    Key? key,
    required this.name,
    required this.photoUrl,
    required this.age,
  }) : super(key: key);


  @override
  State<MainScreenHomeViewBornTodayWidget> createState() => _MainScreenHomeViewWatchBornTodayWidget();
}

class _MainScreenHomeViewWatchBornTodayWidget extends State<MainScreenHomeViewBornTodayWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [

          // background image and watchlist icon

              SizedBox(
                width: constants.scaler(context, 36).width,
                height: constants.scaler(context, 42).width,
                child: Image.network(widget.photoUrl, fit: BoxFit.cover)),

          // other details
          Container(
            width: constants.scaler(context,36).width,
            height: constants.scaler(context, 18).width,
            color: Color.fromARGB(31, 88, 88, 88),
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 8, horizontal:6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(softWrap: true ,widget.name, style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize:13,))),
              
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text(widget.age.toString(), style: constants.appTextFont(style: TextStyle(color:Colors.white60, fontSize: 12,)),),
                        )),

                        
                    ],
                  ),
            ),
          )



        ]
      ),
    );
  }
}
