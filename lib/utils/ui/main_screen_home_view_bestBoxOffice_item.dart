import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewBesBoxOfficeItem extends StatefulWidget {
  int notionNumber;
  String movieName;
  double revenue;
  MainScreenHomeViewBesBoxOfficeItem({
    Key? key,
    required this.notionNumber,
    required this.movieName,
    required this.revenue,
  }) : super(key: key);

  @override
  State<MainScreenHomeViewBesBoxOfficeItem> createState() => _MainScreenHomeViewBesBoxOfficeItemState();
}

class _MainScreenHomeViewBesBoxOfficeItemState extends State<MainScreenHomeViewBesBoxOfficeItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: constants.scaler(context, 12).width,
        height: constants.scaler(context, 10).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.notionNumber.toString(), style: constants.appTextFont(style: TextStyle(color:Colors.white, fontSize: 20)),),
            FaIcon(FontAwesomeIcons.solidBookmark, color: constants.appYellow, size: 36),
          ],
        ),
      ),
      title: Text(widget.movieName, style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 15))),
      subtitle: Text("\$${widget.revenue}M", style: constants.appTextFont(style: TextStyle(color: Colors.white60, fontSize: 13)),),
      trailing: IconButton(
        onPressed: (){}, 
        icon: FaIcon(FontAwesomeIcons.ticketSimple, color: Colors.lightBlue, size: 24)),
    );
  }
}