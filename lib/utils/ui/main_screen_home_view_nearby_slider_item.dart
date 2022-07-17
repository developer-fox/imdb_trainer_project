import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_nearby_slider_child_item.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewNearbySliderItem extends StatefulWidget {

  List<MainScreenHomeViewNearbySliderChildItem> childs;
  String dateTitle;

  MainScreenHomeViewNearbySliderItem({
    Key? key,
    required this.childs,
    required this.dateTitle,
  }) : super(key: key);


  @override
  State<MainScreenHomeViewNearbySliderItem> createState() => _MainScreenHomeViewNearbySliderItem();
}

class _MainScreenHomeViewNearbySliderItem extends State<MainScreenHomeViewNearbySliderItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Align(
            alignment: Alignment.topLeft,
            child: Text(widget.dateTitle, style: constants.appTextFont(style: TextStyle(color: constants.appYellow, fontSize: 16)),)),
          SizedBox(
            height: 300,
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              
              children: widget.childs,
            ),
          ),
        ]
      ),
    );
  }
}
