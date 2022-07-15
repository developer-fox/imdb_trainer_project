

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_home_view_carousel_slider_item_widget.dart';
import '../../core/constants.dart' as constants;

class MainScreenHomeView extends StatefulWidget {
  const MainScreenHomeView({Key? key}) : super(key: key);

  @override
  State<MainScreenHomeView> createState() => _MainScreenHomeViewState();
}

class _MainScreenHomeViewState extends State<MainScreenHomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopCarouselSlider(),
      ],
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


