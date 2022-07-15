

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_carousel_slider_item_widget.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_featured_photos_widget.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_featureds_list_widget.dart';
import '../../core/constants.dart' as constants;
import '../../utils/ui/main_screen_home_view_featured_video_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MainScreenHomeView extends StatefulWidget {
  const MainScreenHomeView({Key? key}) : super(key: key);

  @override
  State<MainScreenHomeView> createState() => _MainScreenHomeViewState();
}

class _MainScreenHomeViewState extends State<MainScreenHomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:  [
          TopCarouselSlider(),
          Featureds(),

          FromWatchList(),
        ],
      ),
    );
  }
}



// top carousel slider
class TopCarouselSlider extends StatefulWidget {
  const TopCarouselSlider({Key? key}) : super(key: key);

  @override
  State<TopCarouselSlider> createState() => _TopCarouselSliderState();
}

class _TopCarouselSliderState extends State<TopCarouselSlider> {

  Widget carouselWidget = MainScreenHomeViewCarouselSliderItemWidget(backgroundImagePath: constants.placeholderImageUrl, bindingImagePath: constants.moviePostImagePlaceHolder, title: "undefined film title", subTitle:"undefined film subtitle" , isIntoWatchList: false);


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        carouselWidget,
        carouselWidget,
        carouselWidget,
        carouselWidget,
      ],
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),

      ),
    );
  }
}


// featureds
class Featureds extends StatefulWidget {
  const Featureds({Key? key}) : super(key: key);

  @override
  State<Featureds> createState() => _FeaturedsState();
}

class _FeaturedsState extends State<Featureds> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // featured title
        Container(
          width: constants.scaler(context, 100).width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Bugün Öne Çıkanlar", style: constants.appTextFont(style: TextStyle(color: constants.appYellow, fontSize: 24)),),
          )),



        // featured content row
        Container(
          height: constants.scaler(context,42).width,
          color: constants.appMediumBlack,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: ScrollPhysics(),
            children: [

              MainScreenHomeViewFeaturedsListWidget(photoUrls: [constants.moviePostImagePlaceHolder, constants.moviePostImagePlaceHolder, constants.moviePostImagePlaceHolder], description: "lorem ipsum dolor sit amet, consectetur",),

              MainScreenHomeViewFeaturedPhotosWidget(photoUrls: [constants.moviePostImagePlaceHolder, constants.moviePostImagePlaceHolder, constants.moviePostImagePlaceHolder], description: "lorem ipsum dolor sit amet,", isPhotosCountEven: true),

              MainScreenHomeViewFeaturedsListWidget(photoUrls: [constants.moviePostImagePlaceHolder, constants.moviePostImagePlaceHolder, constants.moviePostImagePlaceHolder], description: "lorem ipsum dolor sit amet, consectetur",),

              MainScreenHomeViewFeaturedVideoWidget(
                photoUrl: constants.placeholderImageUrl,
                description: "lorem ipsum dolor sit amet",
                seconds: 191,
              ),

              MainScreenHomeViewFeaturedPhotosWidget(photoUrls: [constants.placeholderImageUrl, constants.moviePostImagePlaceHolder, constants.moviePostImagePlaceHolder], description: "lorem ipsum dolor sit amet", isPhotosCountEven: false),



            ],
            
            )),

      ],
    );
  }
}


// watchList
class FromWatchList extends StatefulWidget {
  const FromWatchList({Key? key}) : super(key: key);

  @override
  State<FromWatchList> createState() => _FromWatchListState();
}

class _FromWatchListState extends State<FromWatchList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("İzlenebilecekler", style: constants.appTextFont(style: TextStyle(color:constants.appYellow, fontSize: 24)),),
        ),

        Container(
          color: constants.appMediumBlack,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: VerticalDivider(color: constants.appYellow, width:4, thickness:4)),

                    // title
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("İzleme Listesinden", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 18)),),
                    ),

                    Spacer(),

                    TextButton(
                      onPressed: (){},
                       child: Text("TÜMÜNÜ GÖSTER", style: constants.appTextFont(style: TextStyle(color: Colors.lightBlue))))


                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("İzleme listesinde izlenecek programlar ve filmler mevcut", style: constants.appTextFont(style:  TextStyle(color: Colors.white70, fontSize: 14))),
                )

              ],
            ),
          ),
        )

      ],

    );
  }
}



