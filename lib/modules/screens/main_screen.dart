
import 'package:flutter/material.dart';
import 'package:imdb_trainer_project/modules/views/main_screen_home_view.dart';
import 'package:imdb_trainer_project/modules/views/main_screen_search_view.dart';
import '../../core/constants.dart' as constants;

//* this file includes materialn screen(scaffold) widget


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int bottomNavigationBarCurrentIndex =0;

  var views = [
    MainScreenHomeView(),
    MainScreenSearchView(),
    MainScreenHomeView(), 
    MainScreenHomeView()
    ];
  
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
          body: views[bottomNavigationBarCurrentIndex],
          
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: constants.appMediumBlack,
            selectedItemColor: constants.appYellow,
            unselectedItemColor: constants.appGrey,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            iconSize: 26,
            currentIndex: bottomNavigationBarCurrentIndex,
          
            onTap: (index){
              setState(() {
                bottomNavigationBarCurrentIndex = index;
              });
            },
          
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill), label: "Video"),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Siz"),
            ],
          ),
        ),
      );
  }
}
