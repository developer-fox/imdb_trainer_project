
import "package:flutter/material.dart";
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import '../../core/constants.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {

  late VideoPlayerController _videoplayController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoplayController = VideoPlayerController.asset("assets/minions_trailer.mp4")..initialize().then((value) {
      setState(() {
        _videoplayController.play();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _videoplayController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appMediumBlack,
        title: Text("undefined scaffold title",),
      ),

      body:Column(
        children:[ 
          SizedBox(child: _videoplayController.value.isInitialized ? AspectRatio(aspectRatio: _videoplayController.value.aspectRatio, child:  VideoPlayer(_videoplayController)) : CircularProgressIndicator()),
        
          ElevatedButton(
            onPressed: (){
              if(_videoplayController.value.isPlaying){
                _videoplayController.pause();
                setState(() {
                  
                });
              } 
              else{
                _videoplayController.play();
                setState(() {});
              }
            },

            child: Text("pause"),
          ),

        
        ]
      )


    );
  }
}




