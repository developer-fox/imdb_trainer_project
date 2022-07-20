
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imdb_trainer_project/utils/ui/main_screen_search_view_grid_item.dart';
import '../../core/constants.dart' as constants;




class MainScreenSearchView extends StatefulWidget {
  const MainScreenSearchView({Key? key}) : super(key: key);

  @override
  State<MainScreenSearchView> createState() => _MainScreenSearchView();
}

class _MainScreenSearchView extends State<MainScreenSearchView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
             slivers: [

              // search text field
              SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  title: TextField(
                    decoration:  InputDecoration(
                      hintText:  "IMDb'de Arama",
                      prefixIcon: Icon(Icons.search_outlined, color: Colors.black87),
                      border: InputBorder.none,
                    ),
                    onTap: (){
                      // changing page and go to search page
                    }
                  ),
                ),



              // movies 
              SliverList(delegate: SliverChildListDelegate.fixed(
                [

                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.local_movies_rounded, color: constants.appYellow, size: 36),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Filmler", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 24))),
                        ),
                      ],
                    ),
                  ),

                ]
              )),


                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: GridView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            mainAxisSpacing: 25,
                            crossAxisSpacing: 30,
                            
                          ),
                          children: [
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
  
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
  
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
  
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
  
                          ],
                        ),
                      ),

                    ]
                  ),
                ),

              // Streaming& tv
              SliverList(delegate: SliverChildListDelegate.fixed(
                [

                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.tv, color: constants.appYellow, size: 36),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Streaming & TV", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 24))),
                        ),
                      ],
                    ),
                  ),

                ]
              )),

                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: GridView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            mainAxisSpacing: 25,
                            crossAxisSpacing: 30,
                            
                          ),
                          children: [
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,constants.moviePostImagePlaceHolder,],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: false,
                              ),
  
                          ],
                        ),
                      ),

                    ]
                  ),
                ),

              // ödüller & etkinlikler
              SliverList(delegate: SliverChildListDelegate.fixed(
                [

                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.stars, color: constants.appYellow, size: 36),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Ödüller ve Etkinlikler", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 24))),
                        ),
                      ],
                    ),
                  ),

                ]
              )),

                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: GridView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            mainAxisSpacing: 25,
                            crossAxisSpacing: 30,
                            
                          ),
                          children: [
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.placeholderImageUrl],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: true,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.placeholderImageUrl],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: true,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.placeholderImageUrl],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: true,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.placeholderImageUrl],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: true,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.placeholderImageUrl],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: true,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.placeholderImageUrl],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: true,
                              ),
                            MainScreenSearchViewGridItem(
                              urlsOfPhotos: [constants.placeholderImageUrl],
                              title: "undefined random film title", 
                              elementFunction: ()=> print("merhaba"),
                              isPhotosOnly: true,
                              ),

  
                          ],
                        ),
                      ),

                    ]
                  ),
                ),



              // community
              SliverList(delegate: SliverChildListDelegate.fixed(
                [

                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.globe, color: constants.appYellow, size: 36),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Community", style: constants.appTextFont(style: TextStyle(color: Colors.white, fontSize: 24))),
                        ),
                      ],
                    ),
                  ),

                ]
              )),

                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: GridView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            mainAxisSpacing: 25,
                            crossAxisSpacing: 30,
                            
                          ),
                          children: [
                            MainScreenSearchViewGridIconItem(
                              title: "undefined random title",
                              elementFunction: (){},
                              icon: Icons.stars_rounded,
                              color: Colors.blue,
                            ),
                            MainScreenSearchViewGridIconItem(
                              title: "undefined random title",
                              elementFunction: (){},
                              icon: Icons.add_comment_sharp,
                              color: Colors.green.shade700,
                            ),
                            MainScreenSearchViewGridIconItem(
                              title: "undefined random title",
                              elementFunction: (){},
                              icon: Icons.poll_rounded,
                              color: Colors.red.shade800,
                            ),
  
                          ],
                        ),
                      ),

                    ]
                  ),
                ),


            ],
          );

              
  }
}


