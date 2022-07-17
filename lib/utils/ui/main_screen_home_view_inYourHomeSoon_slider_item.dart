import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_inYourHomeSoon_slider_child_item.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewNInYourHomeSoonSliderItem extends StatefulWidget {

  List<MainScreenHomeViewInYourHomeSoonSliderChildItem> childs;
  String dateTitle;

  MainScreenHomeViewNInYourHomeSoonSliderItem({
    Key? key,
    required this.childs,
    required this.dateTitle,
  }) : super(key: key);


  @override
  State<MainScreenHomeViewNInYourHomeSoonSliderItem> createState() => _MainScreenHomeViewNInYourHomeSoonSliderItem();
}

class _MainScreenHomeViewNInYourHomeSoonSliderItem extends State<MainScreenHomeViewNInYourHomeSoonSliderItem> {
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
            height: constants.scaler(context, 80).width,
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
