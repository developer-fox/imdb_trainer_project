

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_bestBoxOffice_item.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_carousel_slider_item_widget.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_featured_photos_widget.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_featureds_list_widget.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_imdbOriginals_item.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_topRated_item.dart';
import '../../utils/ui/main_screen_home_view_viewersFavourite_item .dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_watchlist_item.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_explore_broadcasts_item.dart';
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
        children:  const [
          TopCarouselSlider(),
          Featureds(),
          FromWatchList(),
          TopRated(),
          ViewersFavourite(),
          WatchOnImdbForFree(),
          ExploreBroadCasts(),
          ExploreMoviesAndTvPrograms(),
          BestBoxOffice(),
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
                ),

                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    height: constants.scaler(context, 90).width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )

      ],

    );
  }
}


// top rated
class TopRated extends StatefulWidget {
  const TopRated({Key? key}) : super(key: key);

  @override
  State<TopRated> createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          width: constants.scaler(context,100).width,
          height: 20,
          color: Colors.black,
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
                      child: Text("En Beğenilenler", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 18)),),
                    ),

                    Spacer(),

                    TextButton(
                      onPressed: (){},
                       child: Text("TÜMÜNÜ GÖSTER", style: constants.appTextFont(style: TextStyle(color: Colors.lightBlue))))


                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("Tam size uygun TV programları ve filmler", style: constants.appTextFont(style:  TextStyle(color: Colors.white70, fontSize: 14))),
                ),

                TextButton(
                  onPressed: (){},
                  child: Text("Improve suggestions", style: constants.appTextFont(style: TextStyle(fontSize: 16, color: Colors.lightBlue),))
                  ),

                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    height: constants.scaler(context, 105).width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        MainScreenHomeViewTopRatedItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewTopRatedItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewTopRatedItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewTopRatedItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )

      ],

    );    
  }
}


// viewers favourite
class ViewersFavourite extends StatefulWidget {
  const ViewersFavourite({Key? key}) : super(key: key);

  @override
  State<ViewersFavourite> createState() => _ViewersFavouriteState();
}

class _ViewersFavouriteState extends State<ViewersFavourite> {
  @override
  Widget build(BuildContext context) {
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          width: constants.scaler(context,100).width,
          height: 20,
          color: Colors.black,
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
                      child: Text("İzleyicilerin en sevdikleri", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 18)),),
                    ),

                    Spacer(),

                    TextButton(
                      onPressed: (){},
                       child: Text("TÜMÜNÜ GÖSTER", style: constants.appTextFont(style: TextStyle(color: Colors.lightBlue))))


                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("Bu haftanın en iyi televizyon ve filmleri", style: constants.appTextFont(style:  TextStyle(color: Colors.white70, fontSize: 14))),
                ),

                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    height: constants.scaler(context, 100).width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        MainScreenHomeViewViewersFavouriteItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewViewersFavouriteItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewViewersFavouriteItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewViewersFavouriteItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "movie", stars: 7.2, yearOfBuilt: 2001, certificateCode: "PG", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )

      ],

    );  
  }
}


// watch on imdb for free
class WatchOnImdbForFree extends StatefulWidget {
  const WatchOnImdbForFree({Key? key}) : super(key: key);

  @override
  State<WatchOnImdbForFree> createState() => _WatchOnImdbForFreeState();
}

class _WatchOnImdbForFreeState extends State<WatchOnImdbForFree> {
  @override
  Widget build(BuildContext context) {
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding:  EdgeInsets.symmetric(vertical: 16, horizontal:16),
          child: Text("IMDB'de ücretsiz izle", style: constants.appTextFont(style: TextStyle(fontSize: 24,color: constants.appYellow)),),
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
                      child: Text("IMDb Originals", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 18)),),
                    ),

                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical:16),
                  child: SizedBox(
                    height: constants.scaler(context, 60).width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [

                        MainScreenHomeViewImdbOriginalsItem(photoUrl: constants.placeholderImageUrl, description: "lorem ipsum dolor sit amet, convecta lorem ipsum dolor amet", seconds: 340),
                        MainScreenHomeViewImdbOriginalsItem(photoUrl: constants.placeholderImageUrl, description: "lorem ipsum dolor sit amet, convecta lorem ipsum dolor amet", seconds: 340),
                        MainScreenHomeViewImdbOriginalsItem(photoUrl: constants.placeholderImageUrl, description: "lorem ipsum dolor sit amet, convecta lorem ipsum dolor amet", seconds: 340),
                        MainScreenHomeViewImdbOriginalsItem(photoUrl: constants.placeholderImageUrl, description: "lorem ipsum dolor sit amet, convecta lorem ipsum dolor amet", seconds: 340),
                        MainScreenHomeViewImdbOriginalsItem(photoUrl: constants.placeholderImageUrl, description: "lorem ipsum dolor sit amet, convecta lorem ipsum dolor amet", seconds: 340),
                        MainScreenHomeViewImdbOriginalsItem(photoUrl: constants.placeholderImageUrl, description: "lorem ipsum dolor sit amet, convecta lorem ipsum dolor amet", seconds: 340),

                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )

      ],

    );      
  }
}


// explore broadcasts
class ExploreBroadCasts extends StatefulWidget {
  const ExploreBroadCasts({Key? key}) : super(key: key);

  @override
  State<ExploreBroadCasts> createState() => _ExploreBroadCastsState();
}

class _ExploreBroadCastsState extends State<ExploreBroadCasts> {
  @override
  Widget build(BuildContext context) {
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding:  EdgeInsets.symmetric(vertical: 16, horizontal:16),
          child: Text("Yayınları keşfet", style: constants.appTextFont(style: TextStyle(fontSize: 24,color: constants.appYellow)),),
        ),

        Container(
          color: constants.appMediumBlack,
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
            child: _exploreBroadCastsTabBar(context),
          ),
        ),

      ],

    );     
  }
}

// explore broadcasts tabBar
Widget _exploreBroadCastsTabBar (BuildContext context){

  return DefaultTabController(
    length: 1,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Align(
              alignment: Alignment.topLeft,
              child: TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: constants.appYellow,
                indicatorWeight: 4,
                tabs: const [
                  Tab(text: "Prime Video",),
                ],
              ),
            ),
          ),
        ),

        SizedBox(
          height: constants.scaler(context,100).width,
          child: TabBarView(
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical:16),
                  child: SizedBox(
                    height: constants.scaler(context, 90).width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [

                        MainScreenHomeViewExploreBroadcastsItem(movieName: "lorem ipsum dolor sit amet", stars: 7.6, backgroundImageUrl: constants.moviePostImagePlaceHolder, years: {"start": 1992, "end": 1996}, episodes: 56),
                        MainScreenHomeViewExploreBroadcastsItem(movieName: "lorem ipsum dolor sit amet", stars: 7.6, backgroundImageUrl: constants.moviePostImagePlaceHolder, years: {"start": 1992, "end": 1996}, episodes: 56),
                        MainScreenHomeViewExploreBroadcastsItem(movieName: "lorem ipsum dolor sit amet", stars: 7.6, backgroundImageUrl: constants.moviePostImagePlaceHolder, years: {"start": 1992, "end": 0}, episodes: 56),
                        MainScreenHomeViewExploreBroadcastsItem(movieName: "lorem ipsum dolor sit amet", stars: 7.6, backgroundImageUrl: constants.moviePostImagePlaceHolder, years: {"start": 1992, "end": 1996}, episodes: 56),
                      ],
                    ),
                  ),
                )

              ],
            ),

            ],
          ),
        ),

      ],
    ),
  );


}


// explore movies and tv programs
class ExploreMoviesAndTvPrograms extends StatefulWidget {
  const ExploreMoviesAndTvPrograms({Key? key}) : super(key: key);

  @override
  State<ExploreMoviesAndTvPrograms> createState() => _ExploreMoviesAndTvProgramsState();
}

class _ExploreMoviesAndTvProgramsState extends State<ExploreMoviesAndTvPrograms> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Filmleri ve TV programlarını keşfet", style: constants.appTextFont(style: TextStyle(color:constants.appYellow, fontSize: 24)),),
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
                      child: Text("Sinemalarda", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 18)),),
                    ),

                    Spacer(),

                    TextButton(
                      onPressed: (){},
                       child: Text("TÜMÜNÜ GÖSTER", style: constants.appTextFont(style: TextStyle(color: Colors.lightBlue))))


                  ],
                ),

                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    height: constants.scaler(context, 90).width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                        MainScreenHomeViewWatchlistItem(movieName: "lorem ipsum dolor sit amet, convecta",type: "cinema", stars: 6.9, yearOfBuilt: 2022, certificateCode: "PG-13", countOfMinutes: 118, backgroundImageUrl: constants.moviePostImagePlaceHolder),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )

      ],

    );    
  }
}


// best box office
class BestBoxOffice extends StatefulWidget {
  const BestBoxOffice({Key? key}) : super(key: key);

  @override
  State<BestBoxOffice> createState() => _BestBoxOfficeState();
}

class _BestBoxOfficeState extends State<BestBoxOffice> {
  @override
  Widget build(BuildContext context) {
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          width: constants.scaler(context,100).width,
          height: 20,
          color: Colors.black,
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
                      child: Text("En iyi box office", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 18)),),
                    ),

                    Spacer(),

                    TextButton(
                      onPressed: (){},
                       child: Text("TÜMÜNÜ GÖSTER", style: constants.appTextFont(style: TextStyle(color: Colors.lightBlue))))


                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("8- 10 Temmuz Haftası", style: constants.appTextFont(style:  TextStyle(color: Colors.white70, fontSize: 14))),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Column(
                      children: [
                        MainScreenHomeViewBesBoxOfficeItem(notionNumber: 1, movieName: "lorem ipsum dolor sit amet,", revenue: 11.2),
                        MainScreenHomeViewBesBoxOfficeItem(notionNumber: 2, movieName: "lorem ipsum dolor sit ,", revenue: 11),
                        MainScreenHomeViewBesBoxOfficeItem(notionNumber: 3, movieName: "lorem ipsum dolor sit ,", revenue: 11),
                        MainScreenHomeViewBesBoxOfficeItem(notionNumber: 3, movieName: "lorem ipsum dolor sit ,", revenue: 11),
                        MainScreenHomeViewBesBoxOfficeItem(notionNumber: 3, movieName: "lorem ipsum dolor sit amet asdcoa asdjnadjndaj asdandjka ,", revenue: 11),
                        MainScreenHomeViewBesBoxOfficeItem(notionNumber: 3, movieName: "lorem ipsum dolor sit ,", revenue: 11),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        )

      ],

    );      
  }
}



