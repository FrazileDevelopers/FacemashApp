import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowImage extends StatefulWidget {
  String imgpath;
  ShowImage(this.imgpath);

  @override
  _ShowImageState createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                height: height,
                width: width,
                imageUrl: widget.imgpath,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                fadeInCurve: Curves.bounceIn,
                fadeInDuration: Duration(
                  milliseconds: 500,
                ),
              ),
              Positioned(
                bottom: height * .07,
                left: width * .08,
                right: width * .27,
                child: MaterialButton(
                  splashColor: Colors.grey[100],
                  color: Colors.white.withOpacity(
                    .47,
                  ),
                  textColor: Colors.white,
                  elevation: 5.0,
                  height: 40.0,
                  // focusColor: Colors.orange,
                  // minWidth: 50.0,
                  child: Text(
                    "Download",
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      40.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                bottom: height * .07,
                // right: width * .2,
                left: width * .72,
                child: IconButton(
                  icon: Icon(
                    Icons.share,
                  ),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: height * .07,
                // right: width * .2,
                left: width * .84,
                child: IconButton(
                  icon: Icon(
                    Icons.wallpaper,
                  ),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
