import 'package:flutter/material.dart';

import '../../core/constants.dart' as constants;

class MainScreenHomeViewImportantNewsItem extends StatefulWidget {

  String newsImageUrl;
  String newsTitle;
  String newsDetail;
  MainScreenHomeViewImportantNewsItem({
    Key? key,
    required this.newsImageUrl,
    required this.newsTitle,
    required this.newsDetail,
  }) : super(key: key);

  @override
  State<MainScreenHomeViewImportantNewsItem> createState() => _MainScreenHomeViewImportantNewsItemState();
}

class _MainScreenHomeViewImportantNewsItemState extends State<MainScreenHomeViewImportantNewsItem> {
  @override
  Widget build(BuildContext context) {

  return SizedBox(
          height: constants.scaler(context, 40).width,
          child: Row(
            children: [
              SizedBox(
                width: constants.scaler(context,22).width,
                child: Image.network(widget.newsImageUrl, fit: BoxFit.contain)),

              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                  child: SizedBox(
                    width: constants.scaler(context,66).width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(widget.newsTitle, style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 15,   height: 1.05)))),
                
                
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(widget.newsDetail, style: constants.appTextFont(style: TextStyle(color: Colors.white60, fontSize: 14,height: 1.05,))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  
  }
}
