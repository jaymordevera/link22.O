import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:link22_o/icons.dart';
import 'package:link22_o/widgets/svg_asset.dart';
import 'package:link22_o/widgets/card_video_material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Educational Videos",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32.w,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),

              // Watch
              Padding(
                padding: EdgeInsets.only(left: 28.w, top: 18.w, right: 28.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Must Watch",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.w),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.h,
              ),

              // Video Card Material: Video 1
              CardVideo(
                onTap: ()async {
                  const url = 'https://www.youtube.com/watch?v=D0Cd9-eJ-No';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    print("Could not launch $url");
                  }
                },
                title: "What is Fake News? Tips For Spotting Them",
                subtitle: "by Smile and Learn - English",
                imageCover: "assets/pics/videocover_1.png",
              ),

              SizedBox(
                height: 30.h,
              ),

              // Video Card Material: Video 2
              CardVideo(
                onTap: () async {
                  const url = 'https://www.youtube.com/watch?v=cSKGa_7XJkg';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    print("Could not launch $url");
                  }
                },
                title: "How false news can spread - Noah Tavlin",
                subtitle: "by TED-Ed",
                imageCover: "assets/pics/videocover_2.png",
              ),

              SizedBox(
                height: 30.h,
              ),

              // Video Card Material: Video 3
              CardVideo(
                onTap: ()async {
                  const url = 'https://www.youtube.com/watch?v=frjITitjisY';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    print("Could not launch $url");
                  }
                },
                title: "Here’s How Fake News Works (and How the Internet Can Stop It)",
                subtitle: "by WIRED",
                imageCover: "assets/pics/videocover_3.png",
              ),

              SizedBox(
                height: 30.h,
              ),

            ],
        ),
      )
    );
  }
}
